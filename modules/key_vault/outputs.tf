output "key_vault_name" {
  value       = azurerm_key_vault.main.name
  description = "The name of the Key Vault created."
}