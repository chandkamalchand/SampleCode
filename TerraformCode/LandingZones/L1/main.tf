### 3 subnets would be created each for web, app and db server
module "az_subnet" {
  source			   = "git url  or local path of modules"
  for_each             = var.subnet_settings
  subnet_name          = var.subnet_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  address_prefixes     = var.address_prefixes
  service_endpoints    = var.service_endpoints
}


module "az_virtual_machine" {
  source			  = "git url  or local path of modules"
  for_each            = var.vm_settings
  virtual_machine_name= var.virtual_machine_name
  resource_group_name = var.resource_group_name
  location            = var.location
  size                = var.vm_size
  admin_username      = var.admin_username
  admin_password	  = var.admin_password
  availability_set_id = var.availability_set_id
  
  depends_on = [
    module.az_subnet
  ]
}

module "az_network_security_group" ##network security group module would get called here with the variables

module "az_subnet_network_security_group_association" ##network security group association module would get called here with the variables

module "az_load_balancer" ##load balancer module would get called here with the variables

module "az_database" ##network security group association module would get called here with the variables


