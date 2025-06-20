module "database" {
  source              = "./modules/database"
  server_name         = var.mssql_server_name
  resource_group_name = module.resource_group.name
  resource_location   = module.resource_group.location
  database_name       = var.database_name
}
module "resource_group" {
  source   = "./modules/resource_group"
  name     = var.resource_group_name
  location = var.resource_location
}