//Vnet config for Main.tf

resource "azurerm_virtual_network" "main" {
  name                = "vnet-prod"
  address_space       = ["10.0.0.0/16"]
  location            = var.resource_location
  resource_group_name = var.resource_group_name
}

resource "azurerm_subnet" "internal" {
  name                 = "internal"
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = ["10.0.2.0/24"]
}

resource azurerm_private_dns_zone "sqlprivatednszone" {
  name                = "privatelink.database.windows.net"
  resource_group_name = var.resource_group_name
}