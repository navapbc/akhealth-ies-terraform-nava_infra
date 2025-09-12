terraform {
  required_providers {
    azurerm = {
      source  = "azurerm"
      version = "4.40.0"
    }
  }
}
provider "azurerm" {
  features {}
}

locals {
    dns_name_label_reuse_policy = "Unsecure"
    location = "eastus"
    name = "aci-project-dev-web-001"
    os_type = "Linux"
    priority = ""
    resource_group_name = "rg-project-dev-001"
    restart_policy = "onFailure"
    sku = "Standard"
    cpu = 1
    cpu_limit = 0
    containgerGroupName = "aci-project-dev-web-001"
    containerImageName = "mcr.microsoft.com/azuredocs/aci-helloworld:latest"
    containerMemoryInGB = "2"
    containerMemoryLimit = "0"
    containerName = "aci-project-dev-web-001"
}

resource "azurerm_container_group" containgerGroupName {
  dns_name_label_reuse_policy = locals.dns_name_label_reuse_policy
  location                    = locals.eastus
  name                        = locals.name
  os_type                     = locals.os_type
  priority                    = locals.priority
  resource_group_name         = locals.resource_group_name
  restart_policy              = locals.restart_policy
  sku                         = locals.sku
  subnet_ids                  = []
  tags                        = {}
  zones                       = []
  container {
    commands                     = []
    cpu                          = locals.cpu
    cpu_limit                    = locals.cpu_limit
    environment_variables        = {}
    image                        = locals.containerImageName
    memory                       = locals.memory
    memory_limit                 = locals.memory_limit
    name                         = locals.containerName
    secure_environment_variables = {}
  }
}
