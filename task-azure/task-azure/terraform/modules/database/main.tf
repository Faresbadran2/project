resource "azurerm_postgresql_flexible_server" "main" {
  name                   = "psql-${var.resource_group_name}"
  resource_group_name    = var.resource_group_name
  location               = var.location
  version                = "13"
  delegated_subnet_id    = var.subnet_id
  private_dns_zone_id   = azurerm_private_dns_zone.postgres_private_dns.id
  storage_mb            = 32768
  zone                  = "1"
  tags                  = var.tags

  administrator_login    = var.admin_username
  administrator_password = var.admin_password

  sku_name   = "GP_Standard_D2s_v3"
  backup_retention_days = 7
}

resource "azurerm_private_dns_zone" "postgres_private_dns" {
  name                = "privatelink.postgres.database.azure.com"
  resource_group_name = var.resource_group_name
  tags                = var.tags
}

resource "azurerm_postgresql_flexible_server_database" "app_db" {
  name      = var.db_name
  server_id = azurerm_postgresql_flexible_server.main.id
  collation = "en_US.utf8"  # Fixed collation
  charset   = "UTF8"
}

resource "azurerm_postgresql_flexible_server_firewall_rule" "allow_aks" {
  name      = "allow-aks-subnet"
  server_id = azurerm_postgresql_flexible_server.main.id
  start_ip_address = cidrhost(var.allowed_subnet_cidr, 0)  # Using CIDR string
  end_ip_address   = cidrhost(var.allowed_subnet_cidr, 255)
}