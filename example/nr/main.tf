# Create a resource group
# This resource group will contain the virtual network
# The name of the resource group is defined in the variables file
# The location of the resource group is also defined in the variables file
# The resource group is created in the specified Azure region

module "azurerm_resource_group" {
  source   = "git::https://github.com/damos1001/virtualnetwork/virtualnetwork/modules.git"
  name     = var.resource_group_name
  location = var.location

}

# Create a virtual network within the resource group
module "azurerm_virtual_network" {
  source              = "git::https://github.com/damos1001/virtualnetwork/virtualnetwork/modules.git"
  name                = var.vnet_name
  resource_group_name = module.azurerm_resource_group.resource_group_name
  location            = var.location
  address_space       = var.address_space
}
# This virtual network will use the address space defined in the variables file
# The name of the virtual network is also defined in the variables file
# The virtual network is created in the same location as the resource group
# The resource group name is referenced to ensure the virtual network is created in the correct resource group
