module "az_resource_group" {
  source			   = "git url  or local path of modules"
  resource_group_name  = var.resource_group_name
  location			   = var.location
  tags				   = var.tags
}

module "az_virtual_network" {
  source			   = "git url  or local path of modules"
  resource_group_name  = var.resource_group_name
  location			   = var.location
  virtual_network_address_space = virtual_network_address_space
  dns_servers          = var.dns_servers
  
  depends_on = [
    module.az_resource_group
  ]
}


