variable "location" {
  type        = string
  description = "The location you want to use"
}

variable "project" {
  type        = string
  description = "The project name to use for resource names"
}

variable "owner" {
  type        = string
  description = "Project owner"
}

variable "sdlc" {
  type        = string
  description = "The stage of the project"
}

variable "default_tags" {
  type = map(any)
  default = {
    app              = "postgresql"
    env              = "lab"
    owner            = "imh"
    security_context = "public"
  }
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
