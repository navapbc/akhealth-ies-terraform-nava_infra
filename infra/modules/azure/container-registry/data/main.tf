terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }
}

//Azure Container Registry names can't exceed 50 characters
data "azurerm_container_registry" "registry" {
  name                = substr(var.name, 0, 49)
  resource_group_name = var.resource_group_name
}
