# Create a virtual network
resource "azurerm_data_factory" "adf" {
  name                = var.adf_name
  location            = var.location
  resource_group_name = data.terraform_remote_state.rg.outputs.resource_group_name
}

resource "azurerm_data_factory_linked_service_azure_data_lake_storage" "adls_linked_service" {
  name                = "ADLSLinkedService"
  resource_group_name = data.terraform_remote_state.rg.outputs.resource_group_name
  factory_name        = azurerm_data_factory.adf.name
  location            = var.location

  linked_service {
    account_name        = "your-adls-account-name"
    authentication_type = "ManagedIdentity"
  }
}