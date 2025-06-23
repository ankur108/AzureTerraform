output "server_name" {
    value = azurerm_mssql_server.db.name
    description = "value of the MSSQL server name"
}
output "database_name" {
    value = azurerm_mssql_database.db.name
    description = "value of the database name on the MSSQL server"
}
output "cosmosdb_account_name" {
    value = azurerm_cosmosdb_account.cdb.name
    description = "value of the CosmosDB account name"
}

output "sql_admin_username" {
  value     = data.azurerm_key_vault_secret.sql_admin_username.value
  sensitive = true
}

output "sql_admin_password" {
  value     = data.azurerm_key_vault_secret.sql_admin_password.value
  sensitive = true
}

