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

variable "db_login" {
  type        = string
  description = "Postgress administrator login"
  default     = "psqladminun"
}

variable "db_password" {
  type        = string
  description = "Postgress administrator password"
}

variable "default_sku" {
  type        = string
  description = "SKU name"
  default     = "B_Gen5_1"
}

variable "postgress_version" {
  type        = number
  description = "Postgres version"
  default     = 11
}
