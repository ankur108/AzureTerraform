data "azurerm_key_vault_secret" "example" {
  name         = "client-secret"
  key_vault_id = azurerm_key_vault.example.id
}

output "secret_value" {
  value     = data.azurerm_key_vault_secret.example.value
  sensitive = true
}