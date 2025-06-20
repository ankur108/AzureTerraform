output "name" {
  value = azurerm_resource_group.example.name
  description = "value of the resource group name"
}
output "location" {
  value = azurerm_resource_group.example.location
  description = "value of the resource group location"
}