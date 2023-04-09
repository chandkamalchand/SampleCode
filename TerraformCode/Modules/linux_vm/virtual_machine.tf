resource "azurerm_linux_virtual_machine" "lvm" {
  name                = var.virtual_machine_name
  resource_group_name = var.resource_group_name
  location            = var.location
  size                = var.vm_size
  admin_username      = var.admin_username
  admin_password	  = var.admin_password
  availability_set_id = var.availability_set_id
  network_interface_ids = [azurerm_network_interface.nic.id]

  admin_ssh_key {
    username   = var.admin_ssh_key_username
    public_key = var.admin_ssh_key_public_key
  }
  
  os_disk {
    name 				 = var.storage_os_disk
    caching              = var.caching
    storage_account_type = var.storage_account_type
	disk_size_gb		 = var.disk_size_gb
  }

  source_image_reference {
    publisher = var.publisher
    offer     = var.offer
    sku       = var.sku
    version   = var.latest_version
  }
  
  depends_on = [azurerm_network_interface.nic]
}