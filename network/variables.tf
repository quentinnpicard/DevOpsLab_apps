variable "resource_group_name" {
  type = string
  description = "Name of the resource group"
}
variable "location" {
  type = string
  default = "West Europe"
  description = "location where are deploy the cluster"
}
variable "name_vnet" {
  type = string
  default = "mylab-vn"
  description = "Name of vnet"
}
variable "name_subnet" {
  type = string
  default = "mylab-sn"
  description = "Name of subnet"
}
variable "address_space" {
  description = "The address space that is used the virtual network. You can supply more than one address space."
  type = list(string)
  default = ["10.52.0.0/16"]
}
variable "address_prefixes" {
  description = "The address space that is used the virtual network. You can supply more than one address space."
  type = list(string)
  default = ["10.52.0.0/24"]
}