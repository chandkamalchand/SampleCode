data "azurerm_subnet" "subnet" {
  name 			        = var.subnet_name
  virtual_network_name  = var.virtual_network_name
  resource_group_name   = var.resource_group_name
}

data "azurerm_network_security_group" "network_security_group" {
  name			       = var.network_security_group_name
  resource_group_name  = var.resource_group_name
}

resource "azurerm_subnet_network_security_group_association" "nsg_association" {
  subnet_id                 = data.azurerm_subnet.subnet.id
  network_security_group_id = data.azurerm_network_security_group.network_security_group.id
}