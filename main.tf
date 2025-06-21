resource "azurerm_resource_group" "arg" {
  name     = var.resource_group_name
  location = var.resource_location
}


module "database" {
  source              = "./modules/database"
  server_name         = var.mssql_server_name
  resource_group_name = azurerm_resource_group.arg.name
  resource_location   = azurerm_resource_group.arg.location
  database_name       = var.database_name
}
