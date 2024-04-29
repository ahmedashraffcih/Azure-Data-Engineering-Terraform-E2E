terraform {
  backend "azurerm" {
    resource_group_name  = "TF-ResourceGroup"
    storage_account_name = "tfstate16z7j"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }

}
