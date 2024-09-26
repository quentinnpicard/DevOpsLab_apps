# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
resource "azurerm_virtual_network" "vnet" {
  name                = var.name_vnet
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = var.address_space
}

resource "azurerm_subnet" "sn" {
  name                 = var.name_subnet
  virtual_network_name = azurerm_virtual_network.vnet.name
  resource_group_name  = var.resource_group_name
  address_prefixes     = var.address_prefixes
}
