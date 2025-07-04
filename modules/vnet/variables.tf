//Vnet config for variables.tf
variable "network_security_group_name" {
  type        = string
  description = "The name of the network security group."
}
variable "virtual_network_name" {
  type        = string
  description = "The name of the virtual network." 
}
variable "resource_group_name" {
  type        = string
  description = "The name of the resource group where the SQL Server will be created."
}
variable "resource_location" {
  type        = string
  description = "The Azure region where the SQL Server will be located."
}