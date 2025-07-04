variable "address_space" {
  description = "The address space that is used by the virtual network."
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "location" {
  description = "The Azure region where the resource group will be created."
  type        = string
 
}

variable "vnet_name" {
  description = "The name of the virtual network."
  type        = string
  
}

variable "resource_group_name" {
  description = "The name of the resource group where the virtual network will be created."
  type        = string
  
  }
  



