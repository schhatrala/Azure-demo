provider "azurerm" {
  version = "=3.64.0"
  features {}
}

data "azurerm_client_config" "current" {
}

resource "azurerm_resource_group" "example" {
  name     = "ptshggarg1"
  location = "West Europe"
}

resource "azurerm_mssql_server" "vaconfigured" {
  name                         = "mssqlserver"
  resource_group_name          = azurerm_resource_group.example.name
  location                     = azurerm_resource_group.example.location
  version                      = "12.0"
  administrator_login          = "4dm1n157r470r"
  administrator_login_password = "4-v3ry-53cr37-p455w0rd"
  minimum_tls_version          = "1.1"

  transparent_data_encryption_key_vault_key_id = azurerm_key_vault_key.vaconfigured.id

}
resource "azurerm_key_vault" "vaconfigured" {
  name                = "keyvaultkeyexample"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  tenant_id           = data.azurerm_client_config.current.tenant_id

  sku_name = "premium"

  tags = {
    environment = "Production"
  }
}

resource "azurerm_key_vault_key" "vaconfigured" {
  name         = "generated-certificate"
  key_vault_id = azurerm_key_vault.vaconfigured.id
  key_type     = "EC"

  key_opts = [
    "decrypt",
    "encrypt",
    "sign",
    "unwrapKey",
    "verify",
    "wrapKey",
  ]
}

resource "azurerm_mssql_server_transparent_data_encryption" "vaconfigured" {
  server_id        = azurerm_mssql_server.vaconfigured.id
  key_vault_key_id = azurerm_key_vault_key.vaconfigured.id
}
resource "azurerm_storage_account" "example" {
  name                     = "accteststorageaccount"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

resource "azurerm_mssql_server_extended_auditing_policy" "example" {
  server_id                               = azurerm_mssql_server.vaconfigured.id
  storage_endpoint                        = azurerm_storage_account.example.primary_blob_endpoint
  storage_account_access_key              = azurerm_storage_account.example.primary_access_key
  storage_account_access_key_is_secondary = false
  retention_in_days                       = 6
}

resource "azurerm_storage_container" "example" {
  name                  = "accteststoragecontainer"
  storage_account_name  = azurerm_storage_account.example.name
  container_access_type = "private"
}

resource "azurerm_mssql_server_security_alert_policy" "example" {
  resource_group_name = azurerm_resource_group.example.name
  server_name         = azurerm_mssql_server.vaconfigured.name
  state               = "Enabled"
}

resource "azurerm_mssql_server_vulnerability_assessment" "example" {
  server_security_alert_policy_id = azurerm_mssql_server_security_alert_policy.example.id
  storage_container_path          = "${azurerm_storage_account.example.primary_blob_endpoint}${azurerm_storage_container.example.name}/"
  storage_account_access_key      = azurerm_storage_account.example.primary_access_key

  recurring_scans {
    enabled                   = true
    email_subscription_admins = false
  }
}

resource "azurerm_mssql_server" "vadisabled" {
  name                         = "mssqlserver1"
  resource_group_name          = azurerm_resource_group.example.name
  location                     = azurerm_resource_group.example.location
  version                      = "12.0"
  administrator_login          = "4dm1n157r470r"
  administrator_login_password = "4-v3ry-53cr37-p455w0rd"
}

resource "azurerm_storage_account" "vadisabled" {
  name                     = "accteststorageaccount"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

resource "azurerm_storage_container" "vadisabled" {
  name                  = "accteststoragecontainer"
  storage_account_name  = azurerm_storage_account.vadisabled.name
  container_access_type = "private"
}

resource "azurerm_mssql_server_security_alert_policy" "vadisabled" {
  resource_group_name = azurerm_resource_group.example.name
  server_name         = azurerm_mssql_server.vadisabled.name
  state               = "Disabled"
}

resource "azurerm_mssql_server_vulnerability_assessment" "vadisabled" {
  server_security_alert_policy_id = azurerm_mssql_server_security_alert_policy.vadisabled.id
  storage_container_path          = "${azurerm_storage_account.vadisabled.primary_blob_endpoint}${azurerm_storage_container.vadisabled.name}/"
  storage_account_access_key      = azurerm_storage_account.vadisabled.primary_access_key

  recurring_scans {
    enabled                   = false
    email_subscription_admins = false
    emails = [
      "email@example1.com",
      "email@example2.com"
    ]
  }
}

resource "azurerm_mssql_server" "recurringscansfalse" {
  name                         = "mssqlserver2"
  resource_group_name          = azurerm_resource_group.example.name
  location                     = azurerm_resource_group.example.location
  version                      = "12.0"
  administrator_login          = "4dm1n157r470r"
  administrator_login_password = "4-v3ry-53cr37-p455w0rd"
}

resource "azurerm_storage_account" "recurringscansfalse" {
  name                     = "accteststorageaccount"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

resource "azurerm_storage_container" "recurringscansfalse" {
  name                  = "accteststoragecontainer"
  storage_account_name  = azurerm_storage_account.recurringscansfalse.name
  container_access_type = "private"
}

resource "azurerm_mssql_server_security_alert_policy" "recurringscansfalse" {
  resource_group_name = azurerm_resource_group.example.name
  server_name         = azurerm_mssql_server.recurringscansfalse.name
  state               = "Enabled"
}

resource "azurerm_mssql_server_vulnerability_assessment" "recurringscansfalse" {
  server_security_alert_policy_id = azurerm_mssql_server_security_alert_policy.recurringscansfalse.id
  storage_container_path          = "${azurerm_storage_account.recurringscansfalse.primary_blob_endpoint}${azurerm_storage_container.recurringscansfalse.name}/"
  storage_account_access_key      = azurerm_storage_account.recurringscansfalse.primary_access_key

  recurring_scans {
    enabled                   = false
    email_subscription_admins = false
  }
}

resource "azurerm_mssql_firewall_rule" "recurringscansfalse" {
  name             = "FirewallRule1"
  server_id        = azurerm_mssql_server.recurringscansfalse.id
  start_ip_address = "0.0.0.0"
  end_ip_address   = "0.0.0.0"
}