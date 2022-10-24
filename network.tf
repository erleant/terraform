resource "azurerm_virtual_network" "vnet" {
  name                = "${var.rgName}-vnet"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.20.0.0/16"]

  tags = {
    environment = "Production Network"
  }
}

resource "azurerm_network_security_group" "nsg" {
  name                = "${var.rgName}-nsg"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}
