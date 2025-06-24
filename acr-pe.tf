resource "azurerm_container_registry" "acr" {
  name                = "acrprivateexample"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  sku                 = "Premium"
  admin_enabled       = false
  public_network_access_enabled = false
}

resource "azurerm_private_endpoint" "acr_pe" {
  name                = "acrPrivateEndpoint"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  subnet_id           = azurerm_subnet.subnet.id

  private_service_connection {
    name                           = "acrConnection"
    private_connection_resource_id = azurerm_container_registry.acr.id
    is_manual_connection           = false
    subresource_names              = ["registry"]
  }
}
