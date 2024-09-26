output "subnet_id" {
  value = azurerm_subnet.sn.id
}
output "vnet_id" {
  value = azurerm_virtual_network.vnet.id
}

output "subnet_name" {
  value = azurerm_subnet.sn.name
}
output "vnet_name" {
  value = azurerm_virtual_network.vnet.name
}