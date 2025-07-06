output "aks_cluster_name" {
  value = module.aks.cluster_name
}

output "aks_private_fqdn" {
  value = module.aks.private_fqdn
}

output "postgres_fqdn" {
  value = module.database.fqdn
}

output "application_gateway_public_ip" {
  value = module.ingress.public_ip
}

output "kube_config" {
  value     = module.aks.kube_config
  sensitive = true
}

output "postgres_connection_string" {
  value     = module.database.connection_string
  sensitive = true
}