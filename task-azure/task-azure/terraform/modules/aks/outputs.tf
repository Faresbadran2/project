output "cluster_name" {
  description = "Name of the created AKS cluster"
  value       = azurerm_kubernetes_cluster.private_aks.name
}

output "private_fqdn" {
  description = "Private FQDN of the AKS cluster"
  value       = azurerm_kubernetes_cluster.private_aks.private_fqdn
}

output "kube_config" {
  description = "Kubeconfig for the AKS cluster"
  value       = azurerm_kubernetes_cluster.private_aks.kube_config_raw
  sensitive   = true
}

output "aks_id" {
  description = "ID of the AKS cluster"
  value       = azurerm_kubernetes_cluster.private_aks.id
}