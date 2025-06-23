resource "azurerm_storage_account" "storage" {
    name                     = var.storage_account_name
    resource_group_name      = var.resource_group_name
    location                 = var.resource_location
    account_tier             = "Standard"
    account_replication_type = "LRS"
    
    tags = {
        environment = "staging"
    }
}
resource "azurerm_storage_container" "container" {
    name                  = "terraform-container"
    storage_account_name  = azurerm_storage_account.storage.name
    container_access_type = "private"
}
