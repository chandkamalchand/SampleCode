#---------------Resource blocks for the NIC---------------#
resource "azurerm_network_interface" "nic" {
  name                  = var.network_interface_name
  location              = var.location
  resource_group_name   = var.resource_group_name
  enable_ip_forwarding  = false

  ip_configuration {
    name                          = var.ip_configuration_name
    subnet_id                     = data.azurerm_subnet.subnet.id
	private_ip_address_version    = "IPv4"
    private_ip_address_allocation = "Dynamic"
  }
  
  depends_on = [data.azurerm_subnet.subnet]
}

resource "azurerm_network_interface_backend_address_pool_association" "vm_lb_pool_association" {
  network_interface_id    = azurerm_network_interface.nic.id
  ip_configuration_name   = var.ip_configuration_name
  backend_address_pool_id = data.azurerm_lb_backend_address_pool.vm_lb_pool.id
  
  depends_on = [
    azurerm_network_interface.nic.id,
	data.azurerm_lb.vm_lb,
	data.azurerm_lb_backend_address_pool.vm_lb_pool
 ]  
}