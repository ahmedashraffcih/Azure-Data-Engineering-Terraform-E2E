terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
  }

  required_version = ">= 1.1.0"
}
provider "azurerm" {
  features {}
}

################ Modules #################
##########################################

module "resource_group" {
  source = "./00_rg"
}

module "vNet" {
  source              = "./01_vnet"
  resource_group_name = module.resource_group.resource_group_name
  location            = "eastus"
}

module "ADLS" {
  source              = "./02_adls"
  resource_group_name = module.resource_group.resource_group_name
  location            = "eastus"
}

module "SqlServer" {
  source              = "./05_sqlserver"
  resource_group_name = module.resource_group.resource_group_name
  location            = "eastus"
}

module "ADF" {
  source              = "./10_adf"
  resource_group_name = module.resource_group.resource_group_name
  location            = "eastus"
}