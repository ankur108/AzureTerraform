variable "resource_group_name" {
  type        = string
  description = "Name of the resource group where the MSSQL server will be created"
}
variable "resource_location" {
  type        = string
  description = "Location where the MSSQL server and resource group will be created"
}
variable "databricks_name" {
  type        = string
  description = "Name of the Databricks workspace to be created"
}
variable "data_factory_name" {
  type        = string
  description = "Name of the Azure Data Factory instance to be created"
}
variable "mssql_server_name" {
  type        = string
  description = "Name of the MSSQL server to be created"
}
variable "database_name" {
  type        = string
  description = "Name of the database to be created on the MSSQL server"
}
variable "storage_account_name" {
  type        = string
  description = "Name of the Azure Storage Account to be created" 
}
variable "cosmosdb_account_name" {
  type        = string
  description = "Name of the CosmosDB account to be created"
}
variable "network_security_group_name" {
  type        = string
  description = "The name of the network security group."   
}
variable "virtual_network_name" {
  type        = string
  description = "The name of the virtual network."   
}
variable "key_vault_name" {
  type        = string
  description = "The name of the Key Vault to be created."
}
