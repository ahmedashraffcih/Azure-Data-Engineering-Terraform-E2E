# Create a virtual network
resource "azurerm_virtual_network" "vnet" {
  name                = var.name
  address_space       = var.address_space
  location            = var.location
  resource_group_name = "TF-ResourceGroup"
  subnet {
    name           = var.subnet_name
    address_prefix = var.subnet_address_prefix
  }
}