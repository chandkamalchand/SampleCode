resource "azurerm_public_ip" "publicip" {
  name                = var.public_ip_name
  location            = var.location
  resource_group_name = var.resource_group_name
  allocation_method   = var.allocation_method
}

resource "azurerm_lb" "loadbalancer" {
  name                = var.load_balancer_name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku				  = var.sku
  sku_tier			  = var.sku_tier

  frontend_ip_configuration {
    name                 = var.frontend_ip_configuration_name
    public_ip_address_id = azurerm_public_ip.publicip.id
  }
}

resource "azurerm_lb_backend_address_pool" "lb_backenpool" {
  loadbalancer_id = azurerm_lb.loadbalancer.id
  name            = var.backend_pool_name
}

