variable "server_name" {
  type        = string
  description = "The name of the SQL Server instance."
}
variable "database_name" {
  type        = string
  description = "The name of the SQL Database to be created."
}
variable "cosmosdb_account_name" {
  type        = string
  description = "The name of the Cosmos DB account to be created."
}
variable "resource_group_name" {
  type        = string
  description = "The name of the resource group where the SQL Server will be created."
}
variable "resource_location" {
  type        = string
  description = "The Azure region where the SQL Server will be located."
}
variable "key_vault_name" {
  type        = string
  description = "The name of the Key Vault where secrets will be stored."
  
}
variable "sql_admin_username" {
  description = "SQL administrator username"
  type        = string
}

variable "sql_admin_password" {
  description = "SQL administrator password"
  type        = string
  sensitive   = true
}