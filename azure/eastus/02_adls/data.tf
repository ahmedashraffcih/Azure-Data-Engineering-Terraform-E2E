data "terraform_remote_state" "rg" {
  backend = "azurerm"
  config = {
    storage_account_name = "tfstatey7lub"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
    resource_group_name = "TF-ResourceGroup"
  }
}