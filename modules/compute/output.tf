output "databricks_name" {
  value = azurerm_databricks_workspace.ds.name
  description = "value of the Databricks workspace name"
}
output "data_factory_name" {
  value = azurerm_data_factory.ds.name
  description = "value of the Azure Data Factory instance name"
}