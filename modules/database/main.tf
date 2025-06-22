data "azurerm_key_vault" "keyv" {
  name                = var.key_vault_id
  resource_group_name = var.resource_group_name
}
data "azurerm_key_vault_secret" "sql_admin_username" {
  name         = "sql-administrator-username"
  key_vault_id = data.azurerm_key_vault.keyv.id
}
data "azurerm_key_vault_secret" "sql_admin_password" {
  name         = "sql-administrator-password"
  key_vault_id = data.azurerm_key_vault.keyv.id
}
resource "azurerm_storage_account" "db" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.resource_location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}
resource "azurerm_mssql_server" "db" {
  name                         = var.server_name
  resource_group_name          = var.resource_group_name
  location                     = var.resource_location
  version                      = "12.0"
  administrator_login          = "4dm1n157r470r"
  administrator_login_password = "4-v3ry-53cr37-p455w0rd"
}

resource "azurerm_mssql_database" "db" {
  name         = var.database_name
  server_id    = azurerm_mssql_server.db.id
  collation    = "SQL_Latin1_General_CP1_CI_AS"
  license_type = "LicenseIncluded"
  max_size_gb  = 2
  sku_name     = "S0"

  tags = {
    foo = "bar"
  }
}

resource "azurerm_cosmosdb_account" "db" {
  name                = var.cosmosdb_account_name
  location            = var.resource_location
  resource_group_name = var.resource_group_name
  offer_type          = "Standard"
  kind                = "MongoDB"

  capabilities {
    name = "EnableAggregationPipeline"
  }

  capabilities {
    name = "mongoEnableDocLevelTTL"
  }

  capabilities {
    name = "MongoDBv3.4"
  }

  capabilities {
    name = "EnableMongo"
  }

  consistency_policy {
    consistency_level       = "BoundedStaleness"
    max_interval_in_seconds = 300
    max_staleness_prefix    = 100000
  }

    geo_location {
    location          = "North Europe"
    failover_priority = 1
  }
    geo_location {
    location          = "uksouth"
    failover_priority = 0
  }

}