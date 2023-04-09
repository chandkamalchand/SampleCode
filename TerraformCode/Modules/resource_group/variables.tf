variable "resource_group_name" {
  type		  = string
  description = "name of the resource group"
}

variable "location" {
  type		  = string
  description = "the location to keep all your resources"
}

variable "tags" {
  type		  = map(any)
  description = "tags for the resources"
  default     = null
}