resource "azurerm_data_factory" "adf" {
  name                = var.adf_name
  location            = var.location
  resource_group_name = var.resource_group_name
}


# resource "azurerm_data_factory_linked_service_sql_server" "sql_server_linked_service" {
#   name              = "SqlServerLinkedService"
#   data_factory_id   = azurerm_data_factory.adf.id
#   connection_string = "Integrated Security=False;Data Source=${data.terraform_remote_state.rg.outputs.sql_server_name};Initial Catalog=${data.terraform_remote_state.rg.outputs.database_name};User ID=${data.terraform_remote_state.rg.outputs.user};Password=${data.terraform_remote_state.rg.outputs.password}"
# }