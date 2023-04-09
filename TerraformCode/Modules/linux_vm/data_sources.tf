#---------------Datasources used for the Linux VM module---------------#
data "azurerm_client_config" "current" {}

data "arurerm_subnet" "subnet" {
  name 					= var.subnet_name
  virtual_network_name  = var.vnet_name
  resource_group_name   = var.nic_resource_group_name
}

data "arurerm_lb" "vm_lb" {
  name 					= var.vm_lb
  resource_group_name   = var.vm_lb_rg
}

data "arurerm_lb_backend_address_pool" "vm_lb_pool" {
  name 					= var.subnet_name
  loadbalancer_id       = data.arurerm_lb.vm_lb.id
}



