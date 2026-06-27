output "resourcegroupnames" {
  value = {
    for key, i in module.rgdeployment : key => i.resourcegroupname
  }
}

output "vnetnames" {
  value = {
    for key, i in module.vnetmodule : key => i.vnetnamedetails
  }
}

output "vnetrgnames" {
  value = {
    for key, i in module.vnetmodule : key => i.vnetrgdetails
  }
}