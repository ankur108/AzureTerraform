data "azurerm_client_config" "current" {}

resource "azurerm_resource_group" "arg" {
  name     = var.resource_group_name
  location = var.resource_location
}

module "key_vault" {
  source                 = "./modules/key_vault"
  resource_group_name    = azurerm_resource_group.arg.name
  resource_location      = azurerm_resource_group.arg.location
  key_vault_name         = var.key_vault_name
  tenant_id              = data.azurerm_client_config.current.tenant_id
  object_id              = data.azurerm_client_config.current.object_id
  administrator_username = var.sql_admin_username
  administrator_password = var.sql_admin_password
}

module "compute" {
  source              = "./modules/compute"
  resource_group_name = azurerm_resource_group.arg.name
  resource_location   = azurerm_resource_group.arg.location
  databricks_name     = var.databricks_name
  data_factory_name   = var.data_factory_name
}

module "database" {
  source                = "./modules/database"
  resource_group_name   = azurerm_resource_group.arg.name
  resource_location     = azurerm_resource_group.arg.location
  server_name           = var.mssql_server_name
  database_name         = var.database_name
  cosmosdb_account_name = var.cosmosdb_account_name
  key_vault_name          = module.key_vault.key_vault_name

  sql_admin_username  = var.sql_admin_username   
  sql_admin_password  = var.sql_admin_password   

}

module "vnet" {
  source                      = "./modules/vnet"
  resource_group_name         = azurerm_resource_group.arg.name
  resource_location           = azurerm_resource_group.arg.location
  network_security_group_name = var.network_security_group_name
  virtual_network_name        = var.virtual_network_name
}

module "storage" {
  source                = "./modules/storage"
  resource_group_name   = azurerm_resource_group.arg.name
  resource_location     = azurerm_resource_group.arg.location
  storage_account_name  = var.storage_account_name
}
