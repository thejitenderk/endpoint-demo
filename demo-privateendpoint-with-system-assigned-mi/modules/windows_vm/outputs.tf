output "principal_id" {
  value = azurerm_windows_virtual_machine.windows_vm.identity[0].principal_id
}