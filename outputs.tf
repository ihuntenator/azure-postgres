output "location" {
  description = "The location where the resources are created"
  value       = azurerm_resource_group.rg.location
}

output "resource_group" {
  description = "The name of the resource group where these resources are created"
  value       = azurerm_resource_group.rg.name
}

output "postgresql_server_fqdn" {
  description = "The postgresql FQDN"
  value       = azurerm_postgresql_server.server.fqdn
}
