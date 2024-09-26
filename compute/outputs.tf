output "cluster_id" {
  description = "The Kubernetes Managed Cluster ID."
  value       = azurerm_kubernetes_cluster.aks.id
}
 
output "client_certificate" {
  description = "Base64 encoded public certificate used by clients to authenticate to the Kubernetes cluster."
  value       = azurerm_kubernetes_cluster.aks.kube_config.0.client_certificate
  sensitive   = true
}
output "node_resource_group" {
  description = "The auto-generated Resource Group which contains the resources for this Managed Kubernetes Cluster."
  value       = azurerm_kubernetes_cluster.aks.node_resource_group
}
output "kubernetes_cluster_name" {
  value = azurerm_kubernetes_cluster.aks.name
}
output "kube_config" {
  description = "Raw Kubernetes config to be used by kubectl and other compatible tools."
  value       = azurerm_kubernetes_cluster.aks.kube_config_raw
  sensitive   = true
}