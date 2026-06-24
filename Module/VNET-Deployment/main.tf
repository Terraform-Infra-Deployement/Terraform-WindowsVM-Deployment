resource "azurerm_virtual_network" "example" {
  name                = var.vnetname
  address_space       = var.vnet-addressspace
  location            = var.vnetrglocation
  resource_group_name = var.vnetrgname
}