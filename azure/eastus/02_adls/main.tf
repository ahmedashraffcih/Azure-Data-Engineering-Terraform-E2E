# Create a virtual network
resource "azurerm_storage_account" "adls" {
  name                     = var.adls_name
  resource_group_name      = data.terraform_remote_state.rg.outputs.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  account_kind             = "StorageV2"
  is_hns_enabled           = "true"
}