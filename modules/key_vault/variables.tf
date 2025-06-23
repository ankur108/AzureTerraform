variable "resource_group_name" {
  type        = string
  description = "The name of the resource group where the Key Vault will be created."
}
variable "resource_location" {
  type        = string
  description = "The Azure region where the Key Vault will be located."
}
variable "administrator_username" {
  type        = string
  description = "SQL administrator username"
}

variable "administrator_password" {
  type        = string
  description = "SQL administrator password"
  sensitive   = true
}
variable "tenant_id" {
  type        = string
  description = "The tenant ID for the Azure subscription."
  
}
variable "object_id" {
  type        = string
  description = "The object ID of the user or service principal that will have access to the Key Vault."
}
variable "key_vault_name" {
  type        = string
  description = "The name of the Key Vault to be created."
}