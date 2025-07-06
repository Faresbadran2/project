variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region for Application Gateway"
  type        = string
}

variable "subnet_id" {
  description = "ID of the Application Gateway subnet"
  type        = string
}

variable "aks_id" {
  description = "ID of the AKS cluster"
  type        = string
}

variable "frontend_fqdn" {
  description = "Frontend FQDN for the application"
  type        = string
}

variable "tags" {
  description = "Tags to apply to all resources"
  type        = map(string)
  default     = {}
}