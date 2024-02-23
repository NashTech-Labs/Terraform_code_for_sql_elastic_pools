provider "azurerm" {
  features {}
}
locals {
  license                               = "LicenseIncluded"
  service_tier                          = "GeneralPurpose"
  sku_name                              = "GP_Gen5"
  family                                = "Gen5"
}
data "azurerm_mssql_server" "knoldus_mssql_server" {
  name                = var.name
  resource_group_name = var.sql-rg
}
resource "azurerm_mssql_elasticpool" "sql-elastic-pool" {
  name                = "${var.name}-elastic-pool"
  resource_group_name = data.azurerm_mssql_server.mssql_server.resource_group_name
  location            = data.azurerm_mssql_server.mssql_server.location
  server_name         = data.azurerm_mssql_server.mssql_server.name
  license_type        = local.license
  max_size_gb         = var.size

  sku {
    name     = local.sku_name
    tier     = local.service_tier
    capacity = var.capacity
    family   = local.family
  }

  per_database_settings {
    min_capacity = var.min_capacity
    max_capacity = var.max_capacity
  }
}
