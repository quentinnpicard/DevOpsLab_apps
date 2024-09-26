resource "random_pet" "prefix" {}

resource "azurerm_resource_group" "RG" {
  name     = "RG-aksdemo"
  location = var.location

  tags = {
    environment = "Demo"
  }
}

module "deploy_network" {
  source = "./network"
  resource_group_name = azurerm_resource_group.RG.name
  name_vnet = "${random_pet.prefix.id}-vnet"
  name_subnet = "${random_pet.prefix.id}-sn"
  address_prefixes = var.address_prefixes
}

module "deploy_aks" {
  source = "./compute"
  resource_group_name = azurerm_resource_group.RG.name
  name_cluster = "${random_pet.prefix.id}-cluster"
  name_node_pool = "system"
  node_number = 1
  subnet_id = module.deploy_network.subnet_id
}