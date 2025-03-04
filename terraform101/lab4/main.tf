resource "azurerm_resource_group" "main" {
    name ="rg-${var.application_name}-${var.environment_name}"
    location = "${var.primary_location}"
  
}


 

data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "main" {
  name                       = "kv-${var.application_name}-${var.environment_name}"
  location                   = azurerm_resource_group.main.location
  resource_group_name        = azurerm_resource_group.main.name
  tenant_id                  = data.azurerm_client_config.current.tenant_id
  sku_name                   = "standard"
 

  
}