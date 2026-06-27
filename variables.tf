variable "resourcegroupdetails" {
  type = map(object({
    name     = string
    location = string
  }))
}

variable "vnetdetails" {
  type = map(object({
    name                = string
    address_space       = list(string)
    resource_group_name = string
    location            = string
  }))
}

variable "windowsvmparameters" {
  type = map(object({
    name                 = string
    size                 = string
    location             = string
    resource_group_name  = string
    virtual_network_name = string
    subnetname           = string
    osdisktype           = string
    vnetrgname           = string
  }))
}

variable "enterprise_tags" {
  type        = map(string)
  description = "Governance tags for cost center tracking."
}
