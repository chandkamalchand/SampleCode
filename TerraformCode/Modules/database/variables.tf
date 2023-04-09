variable "sqlserver_name" {
  type		  = string
  description = "name of the sql server"
}

variable "resource_group_name" {
  type		  = string
  description = "name of the resource group"
}

variable "location" {
  type		  = string
  description = "the location to keep all your resources"
}

variable "version" {
  type		  = string
  description = "version of the sql server"
}

variable "administrator_login" {
  type		  = string
  description = "admin login id"
}

variable "administrator_login_password" {
  type		  = string
  description = "admin login password"
}

variable "database_name" {
  type		  = string
  description = "name of the database"
}

variable "collation" {
  type		  = string
  description = "collation name"
}

variable "license_type" {
  type		  = string
  description = "type of license"
}

variable "max_size_gb" {
  type		  = number
  description = "max size of the database"
  default     = 4
}

variable "read_scale" {
  type		  = boolean
  description = "true or false value for read scale"
}

variable "db_sku_name" {
  type		  = string
  description = "name of sku"
}

variable "zone_redundant" {
  type		  = string
  description = "name of redundant zone"
}