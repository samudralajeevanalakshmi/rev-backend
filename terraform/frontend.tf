resource "azurerm_static_site" "frontend" {
  name                = "revhire-static-site"
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
  sku_size            = "Free"

  identity {
    type = "SystemAssigned"
  }
}
