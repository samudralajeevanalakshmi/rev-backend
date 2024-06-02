resource "azurerm_app_service_plan" "backend_plan" {
  name                = "revhire-backend-service-plan"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  sku {
    tier = "Standard"
    size = "S1"
  }
}

resource "azurerm_app_service" "backend" {
  name                = "revhire-backend-app-service"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  app_service_plan_id = azurerm_app_service_plan.backend_plan.id

  site_config {
    linux_fx_version = "JAVA|11-java11"
  }

  app_settings = {
    "DATABASE_URL" = "jdbc:mysql://${azurerm_mysql_server.mysql.fqdn}:3306/${azurerm_mysql_database.main.name}?user=${azurerm_mysql_server.mysql.administrator_login}&password=${azurerm_mysql_server.mysql.administrator_login_password}"
  }
}
