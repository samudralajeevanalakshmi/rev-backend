output "frontend_url" {
  value = azurerm_static_site.frontend.default_hostname
}

output "backend_url" {
  value = azurerm_app_service.backend.default_site_hostname
}

output "mysql_server_name" {
  value = azurerm_mysql_server.mysql.name
}

output "mysql_database_name" {
  value = azurerm_mysql_database.main.name
}

output "mysql_fqdn" {
  value = azurerm_mysql_server.mysql.fqdn
}
