output "vnet_id" {
  description = "ID of the created virtual network"
  value       = azurerm_virtual_network.aks_vnet.id
}

output "aks_subnet_id" {
  description = "ID of the AKS subnet"
  value       = azurerm_subnet.aks_subnet.id
}

output "postgres_subnet_id" {
  description = "ID of the PostgreSQL subnet"
  value       = azurerm_subnet.postgres_subnet.id
}

output "appgw_subnet_id" {
  description = "ID of the Application Gateway subnet"
  value       = azurerm_subnet.appgw_subnet.id
}

output "aks_subnet_cidr" {
  description = "CIDR block of the AKS subnet"
  value       = var.aks_subnet_cidr  # This should match your subnet CIDR
}