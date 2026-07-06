output "vnetnames" {
  value = azurerm_virtual_network.virtual_network.name
}

output "vnet_ids" {
  value = azurerm_virtual_network.virtual_network.id
}