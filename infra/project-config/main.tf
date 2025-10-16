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
    "Alaska IES" : {
      "client_id" = "270618bf-24fb-414e-85fb-d76d4b48956f",
      "object_id" = "3ce677e5-9014-4638-b9c4-36d451d63111"
    }
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

     "Alaska IES" : {
       object_ids : [
         "2f297620-817c-4712-8dc3-413adc5b90c6", //infrastructure admins
         local.github_actions_azure_config["Alaska IES"].object_id,
       ]
     },
       "Alaska IES" : {
       object_ids : [
         "ae9e09d1-76a2-4275-a36c-e92a28256985", //app registration
         local.github_actions_azure_config["Alaska IES"].object_id,
       ]
     }


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
