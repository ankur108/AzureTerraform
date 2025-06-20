variable "mssql_server_name" {
    type = string
    description = "Name of the MSSQL server to be created"
}
variable "database_name" {
    type = string
    description = "Name of the database to be created on the MSSQL server"
  
}
variable "resource_group_name" {
    type = string
    description = "Name of the resource group where the MSSQL server will be created"
}
variable "resource_location" {
    type = string
    description = "Location where the MSSQL server and resource group will be created"
}