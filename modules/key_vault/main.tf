resource "azurerm_key_vault" "keyv" {
  name                        = "examplekeyvault"
  location                    = var.resource_location
  resource_group_name         = var.resource_group_name
  enabled_for_disk_encryption = true
  tenant_id                   = var.tenant_id
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false

  sku_name = "standard"

  access_policy {
    tenant_id = var.tenant_id
    object_id = var.object_id
    secret_permissions = [ "get", "set", "list" ]
  }
}

resource "azurerm_key_vault_secret" "username" {
  name         = "sql-administrator-username"
  value        = var.administrator_userrname
  key_vault_id = azurerm_key_vault.keyv.id
}

resource "azurerm_key_vault_secret" "passord" {
  name         = "sql-administrator-password"
  value        = var.administrator_password
  key_vault_id = azurerm_key_vault.keyv.id
}