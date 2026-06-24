resource "azurerm_subnet" "example" {
  name                 = var.subnetname
  resource_group_name  = var.subnetrgname
  virtual_network_name = var.subnetvnetname
  address_prefixes     = var.subnet_addressspace
}