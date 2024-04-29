output "sql_server_name" {
  value = azurerm_mssql_server.sql_server.name
}

output "database_name" {
  value = azurerm_mssql_database.db.name
}
output "user" {
  value = azurerm_mssql_server.sql_server.administrator_login
}

output "password" {
  value = azurerm_mssql_server.sql_server.administrator_login_password
  sensitive = true
}