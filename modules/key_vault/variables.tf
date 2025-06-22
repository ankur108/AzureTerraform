variable "resource_group_name" {
  type        = string
  description = "The name of the resource group where the Key Vault will be created."
}
variable "resource_location" {
  type        = string
  description = "The Azure region where the Key Vault will be located."
}