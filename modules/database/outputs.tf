output "storage_account_name" {
    value = azurerm_storage_account.db.name
    description = "value of the Azure Storage Account name"
}
output "server_name" {
    value = azurerm_mssql_server.db.name
    description = "value of the MSSQL server name"
}
output "database_name" {
    value = azurerm_mssql_database.db.name
    description = "value of the database name on the MSSQL server"
}
output "cosmosdb_account_name" {
    value = azurerm_cosmosdb_account.db.name
    description = "value of the CosmosDB account name"
}
