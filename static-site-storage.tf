resource "azurerm_storage_account" "static" {
  name                     = "staticsiteacct"
  location                 = azurerm_resource_group.rg.location
  resource_group_name      = azurerm_resource_group.rg.name
  account_tier             = "Standard"
  account_replication_type = "LRS"
  static_website {
    index_document = "index.html"
    error_404_document = "404.html"
  }
}
