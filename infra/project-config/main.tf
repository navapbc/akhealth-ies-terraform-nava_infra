locals {
  # Machine readable project name (lower case letters, dashes, and underscores)
  project_name = "akhealth-ies-terraform-nava_infra"

  # Project owner
  owner = "TestOwner"

  # URL of project source code repository
  code_repository_url = "https://github.com/navapbc/akhealth-ies-terraform-nava_infra"

  default_region = "eastus"

  tenant_id = "ba06645f-e0cc-44b5-897f-34eb6aa59588"

  github_actions_azure_config = {
    # lowers : {
    #   client_id : "<client_id>",
    #   object_id : "<object_id>",
    # },

    # prod : {
    #   client_id : "<client_id>",
    #   object_id : "<object_id>",
    # }
  }

  infra_admins = {
    # lowers : {
    #   object_ids : [
    #     "<user_object_id>",
    #     local.github_actions_azure_config["lowers"].object_id, # GH Actions Service Principal/Enterprise Application
    #   ]
    # },

    # prod : {
    #   object_ids : [
    #     "<user_object_id>",
    #     local.github_actions_azure_config["prod"].object_id, # GH Actions Service Principal/Enterprise Application
    #   ]
    # }
  }

  default_certificate_contact_email = "jacobpack@navapbc.com"

  
}
