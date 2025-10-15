locals {
  # this must be globally unique
  cert_vault_name           = substr(replace("${var.account_name}-${var.project_config.project_unique_id}", "/[^a-zA-Z0-9]/", ""), 0, 24)
  cert_vault_location       = var.project_config.default_region
  cert_vault_resource_group = var.project_config.project_name
}

