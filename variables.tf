variable "location" {
  type    = string
  default = "australiaeast"
}

variable "default_tags" {
  type = map(any)
  default = {
    app              = "postgres"
    env              = "lab"
    owner            = "imh"
    security_context = "public"
  }
}

variable "azurerm_postgresql_server_name" {
  type        = string
  description = "Postgress server name"
  default     = "failover-psqlserver"
}

variable "db_login" {
  type        = string
  description = "Postgress administrator login"
  default     = "psqladminun"
}

variable "db_password" {
  type        = string
  description = "Postgress administrator password"
}

variable "sku_name" {
  type        = string
  description = "SKU name"
  default     = "B_Gen5_1"
}

variable "postgress_version" {
  type        = number
  description = "Postgres version"
  default     = 11
}

variable "storage_mb" {
  type        = number
  description = "Minimum storage"
  default     = 5120
}

variable "backup_retention" {
  type        = number
  description = "Days to retain backup"
  default     = 7
}

variable "geo_redundant_backup" {
  type        = bool
  description = "GEO redyndant backup"
  default     = false
}

variable "azurerm_postgresql_database" {
  type        = string
  description = "Postgres database name"
  default     = "failover-db"
}

variable "auto_grow" {
  type        = bool
  description = "Enable auto grow of storage"
  default     = false
}

variable "ssl_enforcement" {
  type        = bool
  description = "Enforce TLS"
  default     = true
}

variable "ssl_minimal_tls_version" {
  type        = string
  description = "Minimal TLS version"
  default     = "TLS1_2"
}

variable "azurerm_postgresql_database_name" {
  type        = string
  description = "Postgres database name"
  default     = "failoverdb"
}

variable "charset" {
  type        = string
  description = "Postgres character sset"
  default     = "UTF8"
}

variable "collation" {
  type        = string
  description = "Postgres collation"
  default     = "English_United States.1252"
}
