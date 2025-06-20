output "server_name" {
    value = azurerm_mssql_server.example.name
}
output "database_name" {
    value = azurerm_mssql_database.example.name
}
