resource "azurerm_mssql_server" "sql_server" {
  name                         = var.sql_server_name
  resource_group_name = "TF-ResourceGroup"
  location                     = var.location
  version                      = var.sql_server_version
  administrator_login          = var.admin_login
  administrator_login_password = var.admin_password
}