module "rgdeployment" {
  for_each = var.resourcegroupdetails
  source = "./Module/RG-Deployment"
  rgname = each.value.name
  rglocation = each.value.location
}

module "vnetmodule" {
  for_each = var.vnetdetails
  source = "./Module/VNET-Deployment"
  vnetname = each.value.name
  vnet-addressspace = each.value.address_space
  vnetrgname = each.value.resource_group_name
  vnetrglocation = each.value.location
}

data "azurerm_subnet" "network_lookup" {
  for_each             = var.windowsvmparameters
  name                 = each.value.subnetname
  virtual_network_name = each.value.virtual_network_name
  resource_group_name  = each.value.vnetrgname
}

module "windows-vm" {
  for_each = var.windowsvmparameters
  source = "./Module/Windows-VM-Deployment"
  vmname = each.value.name
  vmrgname = each.value.resource_group_name
  vmlocation = each.value.location
  os_disk_type = each.value.osdisktype
  vmsize = each.value.size
  enterprise_tags = var.enterprise_tags
  subnet_id = data.azurerm_subnet.network_lookup[each.key].id
}