variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "aks-private-cluster-rg"
}

variable "location" {
  description = "Azure region to deploy resources"
  type        = string
  default     = "eastus"
}

variable "tags" {
  description = "Tags to apply to all resources"
  type        = map(string)
  default     = {
    Environment = "Production"
    ManagedBy   = "Terraform"
  }
}

variable "cluster_name" {
  description = "Name of the AKS cluster"
  type        = string
  default     = "private-aks-cluster"
}

variable "dns_prefix" {
  description = "DNS prefix for AKS cluster"
  type        = string
  default     = "privateaks"
}

variable "vnet_address_space" {
  description = "Address space for the virtual network"
  type        = string
  default     = "10.0.0.0/16"
}

variable "aks_subnet_cidr" {
  description = "CIDR for AKS subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "postgres_subnet_cidr" {
  description = "CIDR for PostgreSQL subnet"
  type        = string
  default     = "10.0.2.0/24"
}

variable "appgw_subnet_cidr" {
  description = "CIDR for Application Gateway subnet"
  type        = string
  default     = "10.0.3.0/24"
}

variable "node_count" {
  description = "Number of AKS nodes"
  type        = number
  default     = 2
}

variable "vm_size" {
  description = "Size of AKS nodes"
  type        = string
  default     = "Standard_D2s_v3"
}

variable "service_cidr" {
  description = "AKS service CIDR"
  type        = string
  default     = "10.1.0.0/16"
}

variable "dns_service_ip" {
  description = "AKS DNS service IP"
  type        = string
  default     = "10.1.0.10"
}

variable "availability_zones" {
  description = "Availability zones for AKS nodes"
  type        = list(string)
  default     = ["1", "2", "3"]
}

variable "postgres_admin_username" {
  description = "PostgreSQL admin username"
  type        = string
  sensitive   = true
}

variable "postgres_admin_password" {
  description = "PostgreSQL admin password"
  type        = string
  sensitive   = true
}

variable "db_name" {
  description = "Name of the application database"
  type        = string
  default     = "appdb"
}

variable "frontend_fqdn" {
  description = "Frontend FQDN for Application Gateway"
  type        = string
  default     = "app.example.com"
}