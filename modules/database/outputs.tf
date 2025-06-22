output "storage_account_name" {
    value = azurerm_storage_account.db.name
}
output "server_name" {
    value = azurerm_mssql_server.db.name
}
output "database_name" {
    value = azurerm_mssql_database.db.name
}
output "cosmosdb_account_name" {
    value = azurerm_cosmosdb_account.db.name
}
