//Vnet config for outputs.tf

output "subnet_id" {
  value = azurerm_subnet.internal.id
  description = "The ID of the internal subnet."
  
}

output "dnz_zone_id" {
  value = azurerm_private_dns_zone.sqlprivatednszone.id
  description = "The ID of the private DNS zone for SQL."
  
}