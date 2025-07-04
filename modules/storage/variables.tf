variable "resource_group_name" {
  type        = string
  description = "The name of the resource group where the SQL Server will be created."
}
variable "resource_location" {
  type        = string
  description = "The Azure region where the SQL Server will be located."
}
variable "storage_account_name" {
  type        = string
  description = "The name of the Azure Storage Account to be created."
  
}