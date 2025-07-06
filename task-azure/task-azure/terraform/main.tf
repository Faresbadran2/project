provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "aks_rg" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

module "network" {
  source              = "./modules/network"
  resource_group_name = azurerm_resource_group.aks_rg.name
  location           = azurerm_resource_group.aks_rg.location
  vnet_address_space = var.vnet_address_space
  aks_subnet_cidr    = var.aks_subnet_cidr
  postgres_subnet_cidr = var.postgres_subnet_cidr
  appgw_subnet_cidr  = var.appgw_subnet_cidr
  tags               = var.tags
}

module "aks" {
  source              = "./modules/aks"
  resource_group_name = azurerm_resource_group.aks_rg.name
  location           = azurerm_resource_group.aks_rg.location
  cluster_name       = var.cluster_name
  dns_prefix         = var.dns_prefix
  node_count         = var.node_count
  vm_size            = var.vm_size
  vnet_id            = module.network.vnet_id
  subnet_id          = module.network.aks_subnet_id
  service_cidr       = var.service_cidr
  dns_service_ip     = var.dns_service_ip
  availability_zones = var.availability_zones
  tags               = var.tags
}

# In your root main.tf
module "database" {
  source              = "./modules/database"
  resource_group_name = azurerm_resource_group.aks_rg.name
  location           = azurerm_resource_group.aks_rg.location
  subnet_id          = module.network.postgres_subnet_id
  allowed_subnet_cidr = var.aks_subnet_cidr  # Now passing the CIDR string directly
  admin_username     = var.postgres_admin_username
  admin_password     = var.postgres_admin_password
  db_name           = var.db_name
  tags               = var.tags
}

module "ingress" {
  source              = "./modules/ingress"
  resource_group_name = azurerm_resource_group.aks_rg.name
  location           = azurerm_resource_group.aks_rg.location
  subnet_id          = module.network.appgw_subnet_id
  aks_id             = module.aks.aks_id
  frontend_fqdn      = var.frontend_fqdn
  tags               = var.tags
}