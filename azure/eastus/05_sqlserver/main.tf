resource "random_pet" "azurerm_mssql_server_name" {
  prefix = "sql"
}
resource "azurerm_mssql_server" "sql_server" {
  name                         = random_pet.azurerm_mssql_server_name.id
  resource_group_name          = data.terraform_remote_state.rg.outputs.resource_group_name
  location                     = var.location
  version                      = var.sql_server_version
  administrator_login          = var.admin_login
  administrator_login_password = var.admin_password
}
resource "azurerm_mssql_database" "db" {
  name      = var.sql_db_name
  server_id = azurerm_mssql_server.sql_server.id
}