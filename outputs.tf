output "mssql_server_name" {
  value = module.database.server_name
}
output "database_name" {
  value = module.database.database_name
}
output "name" {
  value = module.resource_group.name
}