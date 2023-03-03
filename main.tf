provider "azurerm" {
  features {}
}

resource "azuread_application" "example" {
  display_name = "example"

  api {
   oauth2_permission_scope {
      admin_consent_description  = "Administer the example application"
      admin_consent_display_name = "Administer"
      enabled                 = true
      type                       = "Admin"
      value                      = "administer"
      id = "1b19509b-32b1-4e9f-b71d-4992aa991967"
    }
  }


  optional_claims {
    access_token {
      name = "myclaim"
    }

    access_token {
      name = "otherclaim"
    }

    id_token {
      name      = "userclaim"
      source    = "user"
      essential = true
      additional_properties = [
        "emit_as_roles"
      ]
    }
  }
}
