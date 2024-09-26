# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

output "resource_group_name" {
  value = azurerm_resource_group.RG.name
}

output "vnet_name" {
  value = module.deploy_network.vnet_name
}
output "subnet_name" {
  value = module.deploy_network.subnet_name
}

output "kubernetes_cluster_name" {
  value = module.deploy_aks.kubernetes_cluster_name
}

output "cluster_id" {
  description = "The Kubernetes Managed Cluster ID."
  value       = module.deploy_aks.cluster_id
}
 
output "client_certificate" {
  description = "Base64 encoded public certificate used by clients to authenticate to the Kubernetes cluster."
  value       = module.deploy_aks.client_certificate
  sensitive   = true
}
 
output "kube_config" {
  description = "Raw Kubernetes config to be used by kubectl and other compatible tools."
  value       = module.deploy_aks.kube_config
  sensitive   = true
}
 
output "node_resource_group" {
  description = "The auto-generated Resource Group which contains the resources for this Managed Kubernetes Cluster."
  value       = module.deploy_aks.node_resource_group
}

# output "host" {
#   value = azurerm_kubernetes_cluster.default.kube_config.0.host
# }

# output "client_key" {
#   value = azurerm_kubernetes_cluster.default.kube_config.0.client_key
# }

# output "client_certificate" {
#   value = azurerm_kubernetes_cluster.default.kube_config.0.client_certificate
# }

# output "kube_config" {
#   value = azurerm_kubernetes_cluster.default.kube_config_raw
# }

# output "cluster_username" {
#   value = azurerm_kubernetes_cluster.default.kube_config.0.username
# }

# output "cluster_password" {
#   value = azurerm_kubernetes_cluster.default.kube_config.0.password
# }
