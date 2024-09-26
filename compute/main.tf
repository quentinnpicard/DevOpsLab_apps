data "azurerm_kubernetes_service_versions" "current" {
  location        = var.location
  include_preview = false
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                              = "AKS-demo-TF"
  location                          = var.location
  resource_group_name               = var.resource_group_name
  dns_prefix                        = var.name_cluster
  kubernetes_version                = data.azurerm_kubernetes_service_versions.current.latest_version
  role_based_access_control_enabled = true

  identity {
    type = "SystemAssigned"
  }

  default_node_pool {
    name            = var.name_node_pool
    node_count      = var.node_number
    vm_size         = "Standard_D2s_v3"
    vnet_subnet_id  = var.subnet_id
    os_disk_size_gb = 30
    # zones   = [1, 2, 3]
    auto_scaling_enabled = true
    max_count            = 3
    min_count            = 1
    type                 = "VirtualMachineScaleSets"

    node_labels = {
      "nodepool-type" = "system"
      "environment"   = "demo"
      "nodepoolos"    = "linux"
    }
    tags = {
      "nodepool-type" = "system"
      "environment"   = "demo"
      "nodepoolos"    = "linux"
    }
  }
  network_profile {
    network_plugin = var.network_plugin
  }

  oidc_issuer_enabled       = true
  workload_identity_enabled = true

  tags = {
    environment = "Demo"
  }
}

# azurerm_kubernetes_cluster_node_pool to create k8s workers
# official documentation https://registry.terraform.io/providers/hashicorp/azurerm/3.65.0/docs/resources/kubernetes_cluster_node_pool
resource "azurerm_kubernetes_cluster_node_pool" "aks-worker" {
  name                  = "worker"
  kubernetes_cluster_id = azurerm_kubernetes_cluster.aks.id
  vm_size               = "Standard_D2_v2"
  min_count             = 1
  max_count             = 60
  auto_scaling_enabled  =true
  node_public_ip_enabled = true
  # enable_auto_scaling   = true
  # enable_node_public_ip = true
  # zones                 = [1, 2, 3]
  vnet_subnet_id = var.subnet_id
  tags           = {
    worker_name = "worker"
    }
}
