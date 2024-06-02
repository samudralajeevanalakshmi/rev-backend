resource "azurerm_mysql_server" "mysql" {
  name                = "revhire-mysql-server"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name

  sku_name   = "GP_Gen5_2"
  storage_mb = 5120
  version    = "8.0"

  administrator_login          = "mysqladminun"
  administrator_login_password = "H@Sh1CoR3!"

  auto_grow_enabled                = true
  backup_retention_days            = 7
  geo_redundant_backup_enabled     = false
  infrastructure_encryption_enabled = false
  public_network_access_enabled    = true
  ssl_enforcement_enabled          = true
  ssl_minimal_tls_version_enforced = "TLS1_2"
}

resource "azurerm_mysql_database" "main" {
  name                = "revhiredb"
  resource_group_name = azurerm_resource_group.main.name
  server_name         = azurerm_mysql_server.mysql.name
  charset             = "utf8"
  collation           = "utf8_unicode_ci"
}
