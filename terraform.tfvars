# This file contains the variable values for the Terraform configuration.
# It is used to set the values for the variables defined in variables.tf.
# The values here are used to create resources in Azure.   


#resource group variables
resource_group_name = "terraform_rg"
resource_location   = "UK South"

#compute variables
databricks_name   = "databricks-terraform"
data_factory_name = "data-factory-terraform"


#databse variables
mssql_server_name     = "sql-server-terraform"
database_name         = "sql-database-terraform"
storage_account_name  = "storageankuracctrt"
cosmosdb_account_name = "cosmosdbterraform"

#Key vault variables
key_vault_name = "db-keys-terraform-uksouth"

#vnet variables
network_security_group_name = "nsg-terraform"
virtual_network_name        = "vnet-terraform"
