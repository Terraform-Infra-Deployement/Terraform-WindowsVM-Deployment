resourcegroupdetails = {
  "RG1" = {
    name = "Prod-RG01"
    location = "westus2"
  }
  "RG2" = {
    name = "Dev-RG01"
    location = "westus2"
  }
  "RG3" = {
    name = "virtual-network-rg"
    location = "northeurope"
  }
  "RG4" = {
    name = "newprod-rg1"
    location = "northeurope"
  }
}

vnetdetails = {
  "vnet1" = {
    name = "Prod-vnet"
    address_space = ["10.0.0.0/16"]
    resource_group_name = "virtual-network-rg"
    location = "northeurope"
  }
  "vnet2" = {
    name = "Prod1-vnet"
    address_space = ["10.0.0.0/16"]
    resource_group_name = "virtual-network-rg"
    location = "westus2"
  }
  "vnet3" = {
    name = "Prod2-vnet"
    address_space = ["10.0.0.0/16"]
    resource_group_name = "virtual-network-rg"
    location = "westus"
  }
}

enterprise_tags = {
  "support-group" = "Cloud-operations Team"
  "application type" = "Prod-app"
  "Application name" = "Construction app"
}

windowsvmparameters = {
  "appvm1" = {
    name = "appvm01"
    resource_group_name = "newprod-rg1"
    virtual_network_name = "Prod1-vnet"
    subnetname = "primary-subnet"
    osdisktype = "StandardSSD_LRS"
    size = "Standard_D2s_v3"
    location = "westus2"
    vnetrgname = "virtual-network-rg"
  }
  "appvm2" = {
    name = "appvm02"
    resource_group_name = "newprod-rg1"
    virtual_network_name = "Prod2-vnet"
    subnetname = "secondary-subnet"
    osdisktype = "StandardSSD_LRS"
    size = "Standard_D2s_v3"
    location = "westus"
    vnetrgname = "virtual-network-rg"
  }
}

