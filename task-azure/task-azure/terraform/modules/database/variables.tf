variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region for PostgreSQL"
  type        = string
}

variable "subnet_id" {
  description = "ID of the PostgreSQL subnet"
  type        = string
}

variable "allowed_subnet_cidr" {
  description = "CIDR block of the subnet allowed to access PostgreSQL"
  type        = string
}

variable "admin_username" {
  description = "PostgreSQL admin username"
  type        = string
  sensitive   = true
}

variable "admin_password" {
  description = "PostgreSQL admin password"
  type        = string
  sensitive   = true
}

variable "db_name" {
  description = "Name of the application database"
  type        = string
}

variable "tags" {
  description = "Tags to apply to all resources"
  type        = map(string)
  default     = {}
}