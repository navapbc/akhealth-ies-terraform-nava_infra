locals {
  containerGroupName = "aci-${var.systemName}-${var.environment}-${var.workloadDescriptor}-${var.instanceNumber}"
  containerName      = "acn-${var.systemName}-${var.environment}-${var.workloadDescriptor}-${var.instanceNumber}"
}

resource "azurerm_container_group" "containgerGroupName" {
  dns_name_label_reuse_policy = var.dnsNameLabelReusePolicy
  location                    = var.region
  name                        = local.containerGroupName
  os_type                     = var.osType
  priority                    = var.priority
  resource_group_name         = ""
  restart_policy              = var.restartPolicy
  sku                         = var.sku
  subnet_ids                  = []
  tags                        = {}
  zones                       = []
  container {
    commands                     = []
    cpu                          = var.containerCPU
    cpu_limit                    = var.containerCPULimit
    environment_variables        = {}
    image                        = var.containerImageName
    memory                       = var.containerMemoryInGb
    memory_limit                 = var.containerMemoryLimit
    name                         = locals.containerName
    secure_environment_variables = {}
  }
}
