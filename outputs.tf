output "resource_group_name" {
  value       = azurerm_resource_group.arg.name
  description = "The name of the resource group."
}
output "databricks_name" {
  value = module.compute.databricks_name
}
output "data_factory_name" {
  value = module.compute.data_factory_name 
}
output "storage_account_name" {
  value = module.database.storage_account_name
}
output "mssql_server_name" {
  value = module.database.server_name
}
output "database_name" {
  value = module.database.database_name
}
output "cosmosdb_account_name" {
  value = module.database.cosmosdb_account_name
  
}
output "subnet_id" {
  value       = module.vnet.subnet_id
  description = "The ID of the internal subnet."

}