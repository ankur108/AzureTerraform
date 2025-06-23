variable "resource_group_name" {
  type        = string
  description = "The name of the resource group where the SQL Server will be created."
}
variable "resource_location" {
  type        = string
  description = "The Azure region where the SQL Server will be located."
}
variable "databricks_name" {
  type        = string
  description = "The name of the SQL Database to be created."
  
}
variable "data_factory_name" {
  type        = string
  description = "The name of the Azure Data Factory instance to be created."
  
}