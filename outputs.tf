output "mssql_server_name" {
  value = module.database.server_name
}
output "database_name" {
  value = module.database.database_name
}
output "resource_group_name" {
  value       = azurerm_resource_group.arg.name
  description = "The name of the resource group."
}
output "subnet_id" {
  value       = module.vnet.subnet_id
  description = "The ID of the internal subnet."

}