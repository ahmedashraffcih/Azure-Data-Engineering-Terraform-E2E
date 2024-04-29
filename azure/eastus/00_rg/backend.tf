terraform {
  backend "azurerm" {
      resource_group_name  = "TF-ResourceGroup"
      storage_account_name = "tfstatey7lub"
      container_name       = "tfstate"
      key                  = "terraform.tfstate"
  }

}

resource "azurerm_resource_group" "state-demo-secure" {
  name     = "state-demo"
  location = "eastus"
}