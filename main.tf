provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "this" {
  for_each = local.rg_details
  name     = each.key
  location = each.value.location
}

resource "azurerm_network_security_group" "this" {
  for_each            = local.nsg_details
  name                = each.key
  location            = azurerm_resource_group.this[each.value.rg_name].location
  resource_group_name = azurerm_resource_group.this[each.value.rg_name].name
}
