resource "azurerm_resource_group" "arg" {
  name     = var.resource_group_name
  location = var.resource_location
}

module "compute" {
  source              = "./modules/compute"
  resource_group_name = azurerm_resource_group.arg.name
  resource_location   = azurerm_resource_group.arg.location
  databricks_name     = var.databricks_name
  data_factory_name   = var.data_factory_name
}

module "database" {
  source              = "./modules/database"
  resource_group_name = azurerm_resource_group.arg.name
  resource_location   = azurerm_resource_group.arg.location
  storage_account_name = var.storage_account_name
  server_name         = var.mssql_server_name
  database_name       = var.database_name
  cosmosdb_account_name = var.cosmosdb_account_name
}

module "vnet" {
  source              = "./modules/vnet"
  resource_group_name = azurerm_resource_group.arg.name
  resource_location   = azurerm_resource_group.arg.location
  network_security_group_name = var.network_security_group_name
  virtual_network_name = var.virtual_network_name
}
