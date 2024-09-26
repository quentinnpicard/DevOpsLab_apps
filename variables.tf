# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

variable "location" {
  type = string
  description = "location where are deploy the Ressource Group"
}
variable "address_prefixes" {
  description = "The address space that is used the virtual network. You can supply more than one address space."
  type = list(string)
  default = ["10.52.0.0/24"]
}


variable "cluster_name" {
  description = "The name for the AKS resources created in the specified Azure Resource Group"
  type = string
  default = "AKS-demo-TF"
}
variable "agents_pool_name" {
  description = "The default Azure AKS agentpool (nodepool) name."
  type = string
  default = "testnodepool"
}
variable "agents_count" {
  description = "The number of Agents that should exist in the Agent Pool. Please set agents_count null while enable_auto_scaling is true to avoid possible agents_count changes."
  type = string
  default = null
}
variable "agents_max_count" {
  description = "Maximum number of nodes in a pool"
  type = number
  default = 2
}
variable "agents_max_pods" {
  description = "The maximum number of pods that can run on each agent. Changing this forces a new resource to be created."
  type = number
  default = 100
}
variable "agents_min_count" {
  description = "Minimum number of nodes in a pool"
  type = number
  default = 1  
}
variable "node_number" {
  type = number
  default = "2"
  description = "location where are deploy the Ressource Group"
}