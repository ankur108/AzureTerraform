output "resource_group_name" {
  value       = azurerm_resource_group.arg.name
  description = "The name of the resource group."
}
output "databricks_name" {
  value       = module.compute.databricks_name
  description = "The name of the Databricks workspace."
}
output "data_factory_name" {
  value       = module.compute.data_factory_name
  description = "The name of the Azure Data Factory instance."
}
output "storage_account_name" {
  value       = module.database.storage_account_name
  description = "The name of the Azure Storage Account."
}
output "mssql_server_name" {
  value       = module.database.server_name
  description = "The name of the MSSQL server."
}
output "database_name" {
  value       = module.database.database_name
  description = "The name of the database created on the MSSQL server."
}
output "cosmosdb_account_name" {
  value       = module.database.cosmosdb_account_name
  description = "The name of the CosmosDB account."
}
output "subnet_id" {
  value       = module.vnet.subnet_id
  description = "The ID of the internal subnet."

}