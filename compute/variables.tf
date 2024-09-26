variable "location" {
  type = string
  default = "West Europe"
  description = "location where are deploy the cluster"
}
variable "resource_group_name" {
  type = string
  description = "Name of the resource group"
}
variable "name_cluster" {
  type = string
  description = "Name of cluster AKS"
}
variable "subnet_id" {
  type        = string
  description = "azure subnet id where the nodepools and aks cluster need to be created"
}
variable "network_plugin" {
  type        = string
  description = "Network plugin to use for networking. Currently supported values are azure, kubenet and none. Changing this forces a new resource to be created."
  default     = "azure"
}
variable "name_node_pool" {
  type = string
  description = "Name of node pool"
}
variable "node_number" {
  type = number
  default = "2"
  description = "location where are deploy the Ressource Group"
}
