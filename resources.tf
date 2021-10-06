resource "azurerm_resource_group" "failover" {
  name     = "rg-imh-aus-lab"
  location = var.location
  tags     = merge(var.default_tags)
}

resource "azurerm_postgresql_server" "failover" {
  name                = "failover-psqlserver"
  location            = azurerm_resource_group.failover.location
  resource_group_name = azurerm_resource_group.failover.name

  administrator_login          = var.db_login
  administrator_login_password = var.db_password

  sku_name   = var.default_sku
  version    = var.postgress_version
  storage_mb = 5120

  backup_retention_days        = 7
  geo_redundant_backup_enabled = false
  auto_grow_enabled            = false

  ssl_enforcement_enabled          = true
  ssl_minimal_tls_version_enforced = "TLS1_2"

  tags = merge(var.default_tags)
}

resource "azurerm_postgresql_database" "failover" {
  name                = "failoverdb"
  resource_group_name = azurerm_resource_group.failover.name
  server_name         = azurerm_postgresql_server.failover.name
  charset             = "UTF8"
  collation           = "English_United States.1252"
}
