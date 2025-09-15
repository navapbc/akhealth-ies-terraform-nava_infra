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

module "containerInstance" {
  source                  = "./resources/containerInstance"
  environment             = "dev"
  systemName              = "sys"
  region                  = "eastus"
  regionAbbreviation      = "eus"
  workloadDescriptor      = "web"
  sku                     = "Standard"
  containerImageName      = "mcr.microsoft.com/azuredocs/aci-helloworld:latest"
  containerCPU            = 1
  containerCPULimit       = 0
  containerMemoryInGb     = 2
  containerMemoryLimit    = 0
  restartPolicy           = "onFailure"
  osType                  = "Linux"
  dnsNameLabelReusePolicy = "Unsecure"
  priority                = ""
  instanceNumber          = "001"
}
