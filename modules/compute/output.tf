output "databricks_name" {
  value = azurerm_databricks_workspace.ds.name
}
output "data_factory_name" {
  value = azurerm_data_factory.ds.name
}