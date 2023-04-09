terraform {
  backend "azurerm" {
    resource_group_name  = "xxxx"
    storage_account_name = "xxx"
    container_name       = "xxxx"
    key                  = "xxxx"
  }
}