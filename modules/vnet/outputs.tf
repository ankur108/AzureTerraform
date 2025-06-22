//Vnet config for outputs.tf
output "network_security_group_name" {
  value = azurerm_network_security_group.main.name
  description = "The name of the network security group."
}
output "virtual_network_name" {
  value = azurerm_virtual_network.main.name
  description = "The name of the virtual network."
}
output "subnet_id" {
  value = azurerm_subnet.internal.id
  description = "The ID of the internal subnet."
  
}

# output "dnz_zone_id" {
#   value = azurerm_private_dns_zone.sqlprivatednszone.id
#   description = "The ID of the private DNS zone for SQL."
  
# }