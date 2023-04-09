location = "eastus"
resource_group_name = "rg_lz_l0"
virtual_network_address_space = ["10.0.0.0/16"]
dns_servers = ["10.0.0.4", "10.0.0.5"]

#######all the values required for the L0 landing zone module would be placed here

subnet_settings = {
  snet_web = {
    name = "snet001"
	cidr = ["10.0.1.0/24"]
}

  snet_app = {
    name = "snet002"
	cidr = ["10.0.2.0/24"]
}

snet_db = {
    name = "snet003"
	cidr = ["10.0.3.0/24"]
}

}