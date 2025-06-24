resource "azurerm_app_service_plan" "asp" {
  name                = "appserviceplan"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  sku {
    tier = "Basic"
    size = "B1"
  }
}

resource "azurerm_app_service" "webapp" {
  name                = "customwebappdemo"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  app_service_plan_id = azurerm_app_service_plan.asp.id
}

resource "azurerm_app_service_custom_hostname_binding" "domain" {
  hostname            = "app.example.com"
  app_service_name    = azurerm_app_service.webapp.name
  resource_group_name = azurerm_resource_group.rg.name
}
