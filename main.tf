provider "azurerm" {
  version = "2.20.0"
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "exampleRG"
  location = "UK South"
}

module "azure-virtual-machine" {
  source = "./virtual-machine"
  resource_group = azurerm_resource_group.example.name
  location = azurerm_resource_group.example.location 
  user = "gumic"
  size = "Standard_B1s"
}



