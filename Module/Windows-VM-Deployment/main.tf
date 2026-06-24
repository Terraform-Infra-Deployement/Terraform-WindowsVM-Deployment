resource "azurerm_network_interface" "nic" {
  name                = "nic-${var.vmname}"
  location            = var.vmlocation
  resource_group_name = var.vmrgname
  tags                = var.enterprise_tags

  ip_configuration {
    name                          = "internal-config"
    subnet_id                     = var.subnet_id # Consumes live data-source ID
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_windows_virtual_machine" "vm" {
  name                = var.vmname
  resource_group_name = var.vmrgname
  location            = var.vmlocation
  size                = var.vmsize
  tags                = var.enterprise_tags

  admin_username      = "azureadmin"
  admin_password      = "P@$$w0rd1234!" # Retrieve via Key Vault data block in production
  network_interface_ids = [
    azurerm_network_interface.nic.id,
  ]

  os_disk {
    name                 = "osdisk-${var.vmname}"
    caching              = "ReadWrite"
    storage_account_type = var.os_disk_type
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2022-datacenter-azure-edition"
    version   = "latest"
  }
}