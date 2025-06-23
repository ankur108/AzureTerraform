resource "azurerm_databricks_workspace" "ds" {
  name                = var.databricks_name
  resource_group_name = var.resource_group_name
  location            = var.resource_location
  sku                 = "standard"

  tags = {
    Environment = "Development"
  }
}

resource "azurerm_data_factory" "ds" {
  name                = var.data_factory_name
  location            = var.resource_location
  resource_group_name = var.resource_group_name
}