
# Create a virtual network within the resource group
resource "azurerm_virtual_network" "Vnet_name" {
  name                = var.vnet_name
  resource_group_name = var.resource_group_name
  location            = var.location
  address_space       = var.address_space
}



