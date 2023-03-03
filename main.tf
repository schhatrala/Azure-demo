provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "acceptanceTestResourceGroup1"
  location = "West US"
}

resource "azurerm_sql_server" "example" {
  name                         = "mysqlserver"
  resource_group_name          = azurerm_resource_group.example.name
  location                     = azurerm_resource_group.example.location
  version                      = "12.0"
  administrator_login          = "4dm1n157r470r"
  administrator_login_password = "4-v3ry-53cr37-p455w0rd"
}

data "azurerm_client_config" "current" {}

resource "azurerm_sql_active_directory_administrator" "example" {
  server_name         = azurerm_sql_server.example.name
  resource_group_name = azurerm_resource_group.example.name
  login               = "admin"
  tenant_id           = data.azurerm_client_config.current.tenant_id
  object_id           = "52388149-6bae-45e0-a3fb-acd972c4fd42"
}
