resource "azurerm_resource_group" "rg" {
  name     = join("-", compact(["rg", lower(var.owner), lower(var.sdlc), lower(var.project)]))
  location = var.location
  tags     = merge(var.default_tags)
}

resource "azurerm_postgresql_server" "server" {
  name                = join("-", compact(["srv", lower(var.owner), lower(var.sdlc), lower(var.project)]))
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  administrator_login          = var.db_login
  administrator_login_password = var.db_password

  sku_name   = var.sku_name
  version    = var.postgress_version
  storage_mb = var.storage_mb

  backup_retention_days        = var.backup_retention
  geo_redundant_backup_enabled = var.geo_redundant_backup
  auto_grow_enabled            = var.auto_grow

  ssl_enforcement_enabled          = var.ssl_enforcement
  ssl_minimal_tls_version_enforced = var.ssl_minimal_tls_version

  tags = merge(var.default_tags)
}

resource "azurerm_postgresql_database" "db" {
  name                = join("-", compact(["db", lower(var.owner), lower(var.sdlc), lower(var.project)]))
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_postgresql_server.server.name
  charset             = var.charset
  collation           = var.collation
}
