variable "subnet_settings" {
  type		  = map(any)
  description = "subnet settings config map"
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


#######variables from the all the modules required for L1 would also be added below