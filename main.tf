provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example_resource_group" {
  name     = "ptshggarg1"
  location = "West US"
}
resource "azurerm_network_security_group" "example" {
  name                = "acceptanceTestSecurityGroup1"
  location            = azurerm_resource_group.example_resource_group.location
  resource_group_name = azurerm_resource_group.example_resource_group.name
}
resource "azurerm_network_security_rule" "all" {
  name                        = "accurics_demo_all"
  priority                    = 100
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "*"
  source_port_range           = "*"
  destination_port_range      = "*"
  source_address_prefix       = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}
resource "azurerm_network_security_rule" "openPublic3020" {
  name                        = "open3020Public"
  priority                    = 101
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "3020"
  destination_port_range      = "3020"
  source_address_prefix       = "192.164.0.0/23"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openInternet3020" {
  name                        = "open3020Internet"
  priority                    = 102
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "3020"
  destination_port_range      = "3020"
  source_address_prefix       = "0.0.0.0/0"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openInternet3389" {
  name                        = "open3389Internet"
  priority                    = 240
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "3389"
  destination_port_range      = "3389"
  source_address_prefix       = "0.0.0.0/0"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPrivate3020" {
  name                        = "open3020Private"
  priority                    = 103
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "3020"
  destination_port_range      = "3020"
  source_address_prefix       = "10.0.0.0/26"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPublic7001" {
  name                        = "open7001Public"
  priority                    = 104
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "7001"
  destination_port_range      = "7001"
  source_address_prefix       = "192.164.0.0/23"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openInternet7001" {
  name                        = "open7001Internet"
  priority                    = 105
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "7001"
  destination_port_range      = "7001"
  source_address_prefix       = "0.0.0.0/0"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPrivate7001" {
  name                        = "open7001Private"
  priority                    = 106
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "7001"
  destination_port_range      = "7001"
  source_address_prefix       = "10.0.0.0/26"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPublic61621" {
  name                        = "open61621Public"
  priority                    = 107
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "61621"
  destination_port_range      = "61621"
  source_address_prefix       = "192.164.0.0/23"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openInternet61621" {
  name                        = "open61621Internet"
  priority                    = 108
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "61621"
  destination_port_range      = "61621"
  source_address_prefix       = "0.0.0.0/0"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPrivate61621" {
  name                        = "open61621Private"
  priority                    = 109
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "61621"
  destination_port_range      = "61621"
  source_address_prefix       = "10.0.0.0/26"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPublic53U" {
  name                        = "open53Public"
  priority                    = 110
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Udp"
  source_port_range           = "53"
  destination_port_range      = "53"
  source_address_prefix       = "192.164.0.0/23"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openInternet53U" {
  name                        = "open53Internet"
  priority                    = 111
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Udp"
  source_port_range           = "53"
  destination_port_range      = "53"
  source_address_prefix       = "0.0.0.0/0"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPrivate53U" {
  name                        = "open53Private"
  priority                    = 112
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Udp"
  source_port_range           = "53"
  destination_port_range      = "53"
  source_address_prefix       = "10.0.0.0/26"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPublic9000" {
  name                        = "open9000Public"
  priority                    = 113
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "9000"
  destination_port_range      = "9000"
  source_address_prefix       = "192.164.0.0/23"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openInternet9000" {
  name                        = "open9000Internet"
  priority                    = 114
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "9000"
  destination_port_range      = "9000"
  source_address_prefix       = "0.0.0.0/0"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPrivate9000" {
  name                        = "open9000Private"
  priority                    = 115
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "9000"
  destination_port_range      = "9000"
  source_address_prefix       = "10.0.0.0/26"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPublic8000" {
  name                        = "open8000Public"
  priority                    = 116
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "8000"
  destination_port_range      = "8000"
  source_address_prefix       = "192.164.0.0/23"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openInternet8000" {
  name                        = "open8000Internet"
  priority                    = 117
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "8000"
  destination_port_range      = "8000"
  source_address_prefix       = "0.0.0.0/0"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPrivate8000" {
  name                        = "open8000Private"
  priority                    = 118
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "8000"
  destination_port_range      = "8000"
  source_address_prefix       = "10.0.0.0/26"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPublic8080" {
  name                        = "open8080Public"
  priority                    = 119
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "8080"
  destination_port_range      = "8080"
  source_address_prefix       = "192.164.0.0/23"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openInternet8080" {
  name                        = "open8080Internet"
  priority                    = 120
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "8080"
  destination_port_range      = "8080"
  source_address_prefix       = "0.0.0.0/0"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPrivate8080" {
  name                        = "open8080Private"
  priority                    = 121
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "8080"
  destination_port_range      = "8080"
  source_address_prefix       = "10.0.0.0/26"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPrivate808080" {
  name                        = "open8080Private"
  priority                    = 121
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "80"
  destination_port_range      = "80"
  source_address_prefix       = "10.0.0.0/26"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPublic636" {
  name                        = "open636Public"
  priority                    = 122
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "636"
  destination_port_range      = "636"
  source_address_prefix       = "192.164.0.0/23"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openInternet636" {
  name                        = "open636Internet"
  priority                    = 123
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "636"
  destination_port_range      = "636"
  source_address_prefix       = "0.0.0.0/0"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPrivate636" {
  name                        = "open636Private"
  priority                    = 124
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "636"
  destination_port_range      = "636"
  source_address_prefix       = "10.0.0.0/26"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPublic1434" {
  name                        = "open1434Public"
  priority                    = 125
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "1434"
  destination_port_range      = "1434"
  source_address_prefix       = "192.164.0.0/23"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openInternet1434" {
  name                        = "open1434Internet"
  priority                    = 126
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "1434"
  destination_port_range      = "1434"
  source_address_prefix       = "0.0.0.0/0"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPrivate1434" {
  name                        = "open1434Private"
  priority                    = 127
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "1434"
  destination_port_range      = "1434"
  source_address_prefix       = "10.0.0.0/26"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPublic1434U" {
  name                        = "open1434Public"
  priority                    = 128
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Udp"
  source_port_range           = "1434"
  destination_port_range      = "1434"
  source_address_prefix       = "192.164.0.0/23"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openInternet1434U" {
  name                        = "open1434Internet"
  priority                    = 129
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Udp"
  source_port_range           = "1434"
  destination_port_range      = "1434"
  source_address_prefix       = "0.0.0.0/0"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPrivate1434U" {
  name                        = "open1434Private"
  priority                    = 130
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Udp"
  source_port_range           = "1434"
  destination_port_range      = "1434"
  source_address_prefix       = "10.0.0.0/26"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPublic135" {
  name                        = "open135Public"
  priority                    = 131
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "135"
  destination_port_range      = "135"
  source_address_prefix       = "192.164.0.0/23"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openInternet135" {
  name                        = "open135Internet"
  priority                    = 132
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "135"
  destination_port_range      = "135"
  source_address_prefix       = "0.0.0.0/0"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPrivate135" {
  name                        = "open135Private"
  priority                    = 133
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "135"
  destination_port_range      = "135"
  source_address_prefix       = "10.0.0.0/26"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPublic1433U" {
  name                        = "open1433Public"
  priority                    = 134
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Udp"
  source_port_range           = "1433"
  destination_port_range      = "1433"
  source_address_prefix       = "192.164.0.0/23"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPublic1433" {
  name                        = "open1433Public"
  priority                    = 135
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "1433"
  destination_port_range      = "1433"
  source_address_prefix       = "192.164.0.0/23"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openInternet1433U" {
  name                        = "open1433Internet"
  priority                    = 136
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Udp"
  source_port_range           = "1433"
  destination_port_range      = "1433"
  source_address_prefix       = "0.0.0.0/0"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openInternet1433" {
  name                        = "open1433Internet"
  priority                    = 137
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "1433"
  destination_port_range      = "1433"
  source_address_prefix       = "0.0.0.0/0"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPrivate1433U" {
  name                        = "open1433Private"
  priority                    = 138
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Udp"
  source_port_range           = "1433"
  destination_port_range      = "1433"
  source_address_prefix       = "10.0.0.0/26"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPrivate1433" {
  name                        = "open1433Private"
  priority                    = 139
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "1433"
  destination_port_range      = "1433"
  source_address_prefix       = "10.0.0.0/26"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPublic11214" {
  name                        = "open11214Public"
  priority                    = 140
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "11214"
  destination_port_range      = "11214"
  source_address_prefix       = "192.164.0.0/23"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openInternet11214" {
  name                        = "open11214Internet"
  priority                    = 141
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "11214"
  destination_port_range      = "11214"
  source_address_prefix       = "0.0.0.0/0"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPrivate11214" {
  name                        = "open11214Private"
  priority                    = 142
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "11214"
  destination_port_range      = "11214"
  source_address_prefix       = "10.0.0.0/26"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPublic11214U" {
  name                        = "open11214Public"
  priority                    = 143
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Udp"
  source_port_range           = "11214"
  destination_port_range      = "11214"
  source_address_prefix       = "192.164.0.0/23"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openInternet11214U" {
  name                        = "open11214Internet"
  priority                    = 144
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Udp"
  source_port_range           = "11214"
  destination_port_range      = "11214"
  source_address_prefix       = "0.0.0.0/0"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPrivate11214U" {
  name                        = "open11214Private"
  priority                    = 145
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Udp"
  source_port_range           = "11214"
  destination_port_range      = "11214"
  source_address_prefix       = "10.0.0.0/26"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPublic11215" {
  name                        = "open11215Public"
  priority                    = 146
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "11215"
  destination_port_range      = "11215"
  source_address_prefix       = "192.164.0.0/23"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openInternet11215" {
  name                        = "open11215Internet"
  priority                    = 147
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "11215"
  destination_port_range      = "11215"
  source_address_prefix       = "0.0.0.0/0"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPrivate11215" {
  name                        = "open11215Private"
  priority                    = 148
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "11215"
  destination_port_range      = "11215"
  source_address_prefix       = "10.0.0.0/26"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPublic11215U" {
  name                        = "open11215Public"
  priority                    = 149
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Udp"
  source_port_range           = "11215"
  destination_port_range      = "11215"
  source_address_prefix       = "192.164.0.0/23"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openInternet11215U" {
  name                        = "open11215Internet"
  priority                    = 150
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Udp"
  source_port_range           = "11215"
  destination_port_range      = "11215"
  source_address_prefix       = "0.0.0.0/0"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPrivate11215U" {
  name                        = "open11215Private"
  priority                    = 151
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Udp"
  source_port_range           = "11215"
  destination_port_range      = "11215"
  source_address_prefix       = "10.0.0.0/26"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPublic445" {
  name                        = "open445Public"
  priority                    = 152
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "445"
  destination_port_range      = "445"
  source_address_prefix       = "192.164.0.0/23"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openInternet445" {
  name                        = "open445Internet"
  priority                    = 153
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "445"
  destination_port_range      = "445"
  source_address_prefix       = "0.0.0.0/0"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPrivate445" {
  name                        = "open445Private"
  priority                    = 154
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "445"
  destination_port_range      = "445"
  source_address_prefix       = "10.0.0.0/26"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPublic27018" {
  name                        = "open27018Public"
  priority                    = 155
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "27018"
  destination_port_range      = "27018"
  source_address_prefix       = "192.164.0.0/23"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openInternet27018" {
  name                        = "open27018Internet"
  priority                    = 156
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "27018"
  destination_port_range      = "27018"
  source_address_prefix       = "0.0.0.0/0"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPrivate27018" {
  name                        = "open27018Private"
  priority                    = 157
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "27018"
  destination_port_range      = "27018"
  source_address_prefix       = "10.0.0.0/26"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPublic3306" {
  name                        = "open3306Public"
  priority                    = 158
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "3306"
  destination_port_range      = "3306"
  source_address_prefix       = "192.164.0.0/23"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openInternet3306" {
  name                        = "open3306Internet"
  priority                    = 159
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "3306"
  destination_port_range      = "3306"
  source_address_prefix       = "0.0.0.0/0"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPrivate3306" {
  name                        = "open3306Private"
  priority                    = 160
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "3306"
  destination_port_range      = "3306"
  source_address_prefix       = "10.0.0.0/26"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPublic137" {
  name                        = "open137Public"
  priority                    = 161
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "137"
  destination_port_range      = "137"
  source_address_prefix       = "192.164.0.0/23"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openInternet137" {
  name                        = "open137Internet"
  priority                    = 162
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "137"
  destination_port_range      = "137"
  source_address_prefix       = "0.0.0.0/0"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPrivate137" {
  name                        = "open137Private"
  priority                    = 163
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "137"
  destination_port_range      = "137"
  source_address_prefix       = "10.0.0.0/26"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPublic137U" {
  name                        = "open137Public"
  priority                    = 164
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Udp"
  source_port_range           = "137"
  destination_port_range      = "137"
  source_address_prefix       = "192.164.0.0/23"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openInternet137U" {
  name                        = "open137Internet"
  priority                    = 165
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Udp"
  source_port_range           = "137"
  destination_port_range      = "137"
  source_address_prefix       = "0.0.0.0/0"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPrivate137U" {
  name                        = "open137Private"
  priority                    = 166
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Udp"
  source_port_range           = "137"
  destination_port_range      = "137"
  source_address_prefix       = "10.0.0.0/26"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPublic138" {
  name                        = "open138Public"
  priority                    = 167
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "138"
  destination_port_range      = "138"
  source_address_prefix       = "192.164.0.0/23"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openInternet138" {
  name                        = "open138Internet"
  priority                    = 168
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "138"
  destination_port_range      = "138"
  source_address_prefix       = "0.0.0.0/0"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPrivate138" {
  name                        = "open138Private"
  priority                    = 169
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "138"
  destination_port_range      = "138"
  source_address_prefix       = "10.0.0.0/26"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPublic138U" {
  name                        = "open138Public"
  priority                    = 170
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Udp"
  source_port_range           = "138"
  destination_port_range      = "138"
  source_address_prefix       = "192.164.0.0/23"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openInternet138U" {
  name                        = "open138Internet"
  priority                    = 171
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Udp"
  source_port_range           = "138"
  destination_port_range      = "138"
  source_address_prefix       = "0.0.0.0/0"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPrivate138U" {
  name                        = "open138Private"
  priority                    = 172
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Udp"
  source_port_range           = "138"
  destination_port_range      = "138"
  source_address_prefix       = "10.0.0.0/26"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPublic139" {
  name                        = "open139Public"
  priority                    = 173
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "139"
  destination_port_range      = "139"
  source_address_prefix       = "192.164.0.0/23"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openInternet139" {
  name                        = "open139Internet"
  priority                    = 174
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "139"
  destination_port_range      = "139"
  source_address_prefix       = "0.0.0.0/0"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPrivate139" {
  name                        = "open139Private"
  priority                    = 175
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "139"
  destination_port_range      = "139"
  source_address_prefix       = "10.0.0.0/26"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPublic139U" {
  name                        = "open139Public"
  priority                    = 176
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Udp"
  source_port_range           = "139"
  destination_port_range      = "139"
  source_address_prefix       = "192.164.0.0/23"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openInternet139U" {
  name                        = "open139Internet"
  priority                    = 177
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Udp"
  source_port_range           = "139"
  destination_port_range      = "139"
  source_address_prefix       = "0.0.0.0/0"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPrivate139U" {
  name                        = "open139Private"
  priority                    = 178
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Udp"
  source_port_range           = "139"
  destination_port_range      = "139"
  source_address_prefix       = "10.0.0.0/26"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPublic2484" {
  name                        = "open2484Public"
  priority                    = 179
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "2484"
  destination_port_range      = "2484"
  source_address_prefix       = "192.164.0.0/23"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openInternet2484" {
  name                        = "open2484Internet"
  priority                    = 180
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "2484"
  destination_port_range      = "2484"
  source_address_prefix       = "0.0.0.0/0"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPrivate2484" {
  name                        = "open2484Private"
  priority                    = 181
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "2484"
  destination_port_range      = "2484"
  source_address_prefix       = "10.0.0.0/26"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPublic2484U" {
  name                        = "open2484Public"
  priority                    = 182
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Udp"
  source_port_range           = "2484"
  destination_port_range      = "2484"
  source_address_prefix       = "192.164.0.0/23"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openInternet2484U" {
  name                        = "open2484Internet"
  priority                    = 183
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Udp"
  source_port_range           = "2484"
  destination_port_range      = "2484"
  source_address_prefix       = "0.0.0.0/0"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPrivate2484U" {
  name                        = "open2484Private"
  priority                    = 184
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Udp"
  source_port_range           = "2484"
  destination_port_range      = "2484"
  source_address_prefix       = "10.0.0.0/26"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPublic110" {
  name                        = "open110Public"
  priority                    = 185
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "110"
  destination_port_range      = "110"
  source_address_prefix       = "192.164.0.0/23"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openInternet110" {
  name                        = "open110Internet"
  priority                    = 186
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "110"
  destination_port_range      = "110"
  source_address_prefix       = "0.0.0.0/0"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPrivate110" {
  name                        = "open110Private"
  priority                    = 187
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "110"
  destination_port_range      = "110"
  source_address_prefix       = "10.0.0.0/26"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPublic5432" {
  name                        = "open5432Public"
  priority                    = 188
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "5432"
  destination_port_range      = "5432"
  source_address_prefix       = "192.164.0.0/23"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openInternet5432" {
  name                        = "open5432Internet"
  priority                    = 189
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "5432"
  destination_port_range      = "5432"
  source_address_prefix       = "0.0.0.0/0"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPrivate5432" {
  name                        = "open5432Private"
  priority                    = 190
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "5432"
  destination_port_range      = "5432"
  source_address_prefix       = "10.0.0.0/26"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPublic5432U" {
  name                        = "open5432Public"
  priority                    = 191
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Udp"
  source_port_range           = "5432"
  destination_port_range      = "5432"
  source_address_prefix       = "192.164.0.0/23"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openInternet5432U" {
  name                        = "open5432Internet"
  priority                    = 192
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Udp"
  source_port_range           = "5432"
  destination_port_range      = "5432"
  source_address_prefix       = "0.0.0.0/0"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPrivate5432U" {
  name                        = "open5432Private"
  priority                    = 193
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Udp"
  source_port_range           = "5432"
  destination_port_range      = "5432"
  source_address_prefix       = "10.0.0.0/26"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPublic3000" {
  name                        = "open3000Public"
  priority                    = 194
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "3000"
  destination_port_range      = "3000"
  source_address_prefix       = "192.164.0.0/23"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openInternet3000" {
  name                        = "open3000Internet"
  priority                    = 195
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "3000"
  destination_port_range      = "3000"
  source_address_prefix       = "0.0.0.0/0"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPrivate3000" {
  name                        = "open3000Private"
  priority                    = 196
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "3000"
  destination_port_range      = "3000"
  source_address_prefix       = "10.0.0.0/26"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPublic8140" {
  name                        = "open8140Public"
  priority                    = 197
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "8140"
  destination_port_range      = "8140"
  source_address_prefix       = "192.164.0.0/23"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openInternet8140" {
  name                        = "open8140Internet"
  priority                    = 198
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "8140"
  destination_port_range      = "8140"
  source_address_prefix       = "0.0.0.0/0"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPrivate8140" {
  name                        = "open8140Private"
  priority                    = 199
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "8140"
  destination_port_range      = "8140"
  source_address_prefix       = "10.0.0.0/26"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPublic25" {
  name                        = "open25Public"
  priority                    = 200
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "25"
  destination_port_range      = "25"
  source_address_prefix       = "192.164.0.0/23"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openInternet25" {
  name                        = "open25Internet"
  priority                    = 201
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "25"
  destination_port_range      = "25"
  source_address_prefix       = "0.0.0.0/0"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPrivate25" {
  name                        = "open25Private"
  priority                    = 202
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "25"
  destination_port_range      = "25"
  source_address_prefix       = "10.0.0.0/26"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPublic161" {
  name                        = "open161Public"
  priority                    = 203
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "161"
  destination_port_range      = "161"
  source_address_prefix       = "0.0.0.0/0"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPublic161U" {
  name                        = "open161Public"
  priority                    = 204
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Udp"
  source_port_range           = "161"
  destination_port_range      = "161"
  source_address_prefix       = "192.164.0.0/23"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openInternet161" {
  name                        = "open161Internet"
  priority                    = 205
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "161"
  destination_port_range      = "161"
  source_address_prefix       = "0.0.0.0/0"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openInternet161U" {
  name                        = "open161Internet"
  priority                    = 206
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Udp"
  source_port_range           = "161"
  destination_port_range      = "161"
  source_address_prefix       = "0.0.0.0/0"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPrivate161" {
  name                        = "open161Private"
  priority                    = 207
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "161"
  destination_port_range      = "161"
  source_address_prefix       = "0.0.0.0/0"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPrivate161U" {
  name                        = "open161Private"
  priority                    = 208
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Udp"
  source_port_range           = "161"
  destination_port_range      = "161"
  source_address_prefix       = "10.0.0.0/26"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPublic2382" {
  name                        = "open2382Public"
  priority                    = 209
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "2382"
  destination_port_range      = "2382"
  source_address_prefix       = "192.164.0.0/23"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openInternet2382" {
  name                        = "open2382Internet"
  priority                    = 210
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "2382"
  destination_port_range      = "2382"
  source_address_prefix       = "0.0.0.0/0"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPrivate2382" {
  name                        = "open2382Private"
  priority                    = 211
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "2382"
  destination_port_range      = "2382"
  source_address_prefix       = "10.0.0.0/26"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPublic2383" {
  name                        = "open2383Public"
  priority                    = 212
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "2383"
  destination_port_range      = "2383"
  source_address_prefix       = "192.164.0.0/23"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openInternet2383" {
  name                        = "open2383Internet"
  priority                    = 213
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "2383"
  destination_port_range      = "2383"
  source_address_prefix       = "0.0.0.0/0"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPrivate2383" {
  name                        = "open2383Private"
  priority                    = 214
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "2383"
  destination_port_range      = "2383"
  source_address_prefix       = "10.0.0.0/26"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPublic4505" {
  name                        = "open4505Public"
  priority                    = 215
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "4505"
  destination_port_range      = "4505"
  source_address_prefix       = "192.164.0.0/23"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openInternet4505" {
  name                        = "open4505Internet"
  priority                    = 216
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "4505"
  destination_port_range      = "4505"
  source_address_prefix       = "0.0.0.0/0"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPrivate4505" {
  name                        = "open4505Private"
  priority                    = 217
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "4505"
  destination_port_range      = "4505"
  source_address_prefix       = "10.0.0.0/26"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPublic4506" {
  name                        = "open4506Public"
  priority                    = 218
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "4506"
  destination_port_range      = "4506"
  source_address_prefix       = "192.164.0.0/23"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openInternet4506" {
  name                        = "open4506Internet"
  priority                    = 219
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "4506"
  destination_port_range      = "4506"
  source_address_prefix       = "0.0.0.0/0"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPrivate4506" {
  name                        = "open4506Private"
  priority                    = 220
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "4506"
  destination_port_range      = "4506"
  source_address_prefix       = "10.0.0.0/26"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPublic23" {
  name                        = "open23Public"
  priority                    = 221
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "23"
  destination_port_range      = "23"
  source_address_prefix       = "192.164.0.0/23"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openInternet23" {
  name                        = "open23Internet"
  priority                    = 222
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "23"
  destination_port_range      = "23"
  source_address_prefix       = "0.0.0.0/0"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPrivate23" {
  name                        = "open23Private"
  priority                    = 223
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "23"
  destination_port_range      = "23"
  source_address_prefix       = "10.0.0.0/26"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPublic5500" {
  name                        = "open5500Public"
  priority                    = 224
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "5500"
  destination_port_range      = "5500"
  source_address_prefix       = "192.164.0.0/23"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openInternet5500" {
  name                        = "open5500Internet"
  priority                    = 225
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "5500"
  destination_port_range      = "5500"
  source_address_prefix       = "0.0.0.0/0"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPrivate5500" {
  name                        = "open5500Private"
  priority                    = 226
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "5500"
  destination_port_range      = "5500"
  source_address_prefix       = "10.0.0.0/26"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPublic5900" {
  name                        = "open5900Public"
  priority                    = 227
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "5900"
  destination_port_range      = "5900"
  source_address_prefix       = "192.164.0.0/23"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openInternet5900" {
  name                        = "open5900Internet"
  priority                    = 228
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "5900"
  destination_port_range      = "5900"
  source_address_prefix       = "0.0.0.0/0"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPrivate5900" {
  name                        = "open5900Private"
  priority                    = 229
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "5900"
  destination_port_range      = "5900"
  source_address_prefix       = "10.0.0.0/26"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPrivate6666" {
  name                        = "open6666Private"
  priority                    = 230
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "6666"
  destination_port_range      = "6666"
  source_address_prefix       = "10.0.0.0/26"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPrivate6666U" {
  name                        = "open6666Private"
  priority                    = 231
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Udp"
  source_port_range           = "6666"
  destination_port_range      = "6666"
  source_address_prefix       = "10.0.0.0/26"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openInternet6666" {
  name                        = "open6666Internet"
  priority                    = 232
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "6666"
  destination_port_range      = "6666"
  source_address_prefix       = "0.0.0.0/0"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openInternet6666U" {
  name                        = "open6666Internet"
  priority                    = 233
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Udp"
  source_port_range           = "6666"
  destination_port_range      = "6666"
  source_address_prefix       = "0.0.0.0/0"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPublic6666" {
  name                        = "open5900Public"
  priority                    = 234
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "6666"
  destination_port_range      = "6666"
  source_address_prefix       = "192.164.0.0/23"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPublic6666U" {
  name                        = "open6666Public"
  priority                    = 235
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Udp"
  source_port_range           = "6666"
  destination_port_range      = "6666"
  source_address_prefix       = "192.164.0.0/23"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "icmpOpen" {
  name                        = "icmpOpen"
  priority                    = 236
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Icmp"
  source_port_range           = "455"
  destination_port_range      = "6666"
  source_address_prefix       = "192.164.0.0/23"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPublic22" {
  name                        = "open22Public"
  priority                    = 237
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "22"
  destination_port_range      = "22"
  source_address_prefix       = "192.164.0.0/23"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openInternet22" {
  name                        = "open22Internet"
  priority                    = 238
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "22"
  destination_port_range      = "22"
  source_address_prefix       = "0.0.0.0/0"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_rule" "openPrivate22" {
  name                        = "open22Private"
  priority                    = 239
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "22"
  destination_port_range      = "22"
  source_address_prefix       = "10.0.0.0/26"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example.name
}

resource "azurerm_network_security_group" "tooManyIPs" {
  name                = "privateToomanyOpen"
  location            = azurerm_resource_group.example_resource_group.location
  resource_group_name = azurerm_resource_group.example_resource_group.name

  security_rule = [
    {
      access                       = "Allow"
      destination_address_prefixes = ["10.177.12.0/23", "10.177.14.0/23"]
      destination_port_ranges      = ["1494", "16500-16509", "2598"]
      direction                    = "Inbound"
      name                         = "IB_Allow_1"
      priority                     = 237
      protocol                     = "*"
      source_address_prefixes      = ["10.176.192.7", "10.176.192.9", "10.180.192.13", "10.180.192.7"]
      source_port_range            = "*"

      description                                = ""
      destination_address_prefix                 = ""
      destination_application_security_group_ids = []
      destination_port_range                     = ""
      source_address_prefix                      = ""
      source_application_security_group_ids      = []
      source_port_ranges                         = []
    },
    {
      access = "Allow"
      destination_address_prefixes = [
        "10.195.106.23",
        "10.195.106.24",
        "10.195.106.25",
        "10.195.106.26",
        "10.195.106.27"
      ]
      destination_port_ranges = [
        "14803",
        "14805",
        "14808",
        "443",
        "7979",
        "8080",
        "8443",
        "8989",
        "9090"
      ]
      direction             = "Outbound"
      name                  = "OB_Allow_1"
      priority              = 238
      protocol              = "*"
      source_address_prefix = "10.177.12.0/22"
      source_port_range     = "*"

      description                                = ""
      destination_address_prefix                 = ""
      destination_application_security_group_ids = []
      destination_port_range                     = ""
      source_application_security_group_ids      = []
      source_port_ranges                         = []
      source_address_prefixes                    = []
    },
    {
      access                       = "Allow"
      destination_address_prefixes = ["10.224.32.40", "10.224.32.45"]
      destination_port_ranges = [
        "22",
        "6222",
        "6223",
        "6224",
        "6226",
        "6227"
      ]
      direction             = "Outbound"
      name                  = "OB_Allow_2"
      priority              = 239
      protocol              = "*"
      source_address_prefix = "10.177.12.0/22"
      source_port_range     = "*"

      description                                = ""
      destination_address_prefix                 = ""
      destination_application_security_group_ids = []
      destination_port_range                     = ""
      source_application_security_group_ids      = []
      source_port_ranges                         = []
      source_address_prefixes                    = []
    },
    {
      access = "Allow"
      destination_address_prefixes = [
        "10.224.76.0/24",
        "10.225.108.0/24",
        "10.226.76.0/24",
        "10.232.2.111",
        "10.232.22.221",
        "10.236.44.0/24",
        "10.237.220.0/24",
        "10.238.44.0/24",
        "10.239.140.0/24"
      ]
      destination_port_range = "5501-5610"
      direction              = "Outbound"
      name                   = "OB_Allow_3"
      priority               = 240
      protocol               = "*"
      source_address_prefix  = "10.177.12.0/22"
      source_port_range      = "*"

      description                                = ""
      destination_address_prefix                 = ""
      destination_application_security_group_ids = []
      source_application_security_group_ids      = []
      source_port_ranges                         = []
      source_address_prefixes                    = []
      destination_port_ranges                    = []
    },
    {
      access                       = "Allow"
      destination_address_prefixes = ["10.225.64.109", "10.225.64.110"]
      destination_port_ranges = [
        "22",
        "8222",
        "8223",
        "8224",
        "8226",
        "8227"
      ]
      direction             = "Outbound"
      name                  = "OB_Allow_4"
      priority              = 241
      protocol              = "*"
      source_address_prefix = "10.177.12.0/22"
      source_port_range     = "*"

      description                                = ""
      destination_address_prefix                 = ""
      destination_application_security_group_ids = []
      destination_port_range                     = ""
      source_address_prefix                      = ""
      source_application_security_group_ids      = []
      source_port_ranges                         = []
      source_address_prefixes                    = []
    },
    {
      access                     = "Allow"
      destination_address_prefix = "10.177.12.0/22"
      destination_port_ranges = [
        "14803",
        "14805",
        "14808",
        "443",
        "7979",
        "8080",
        "8443",
        "8989",
        "9090"
      ]
      direction = "Inbound"
      name      = "IB_Allow_2"
      priority  = 242
      protocol  = "*"
      source_address_prefixes = [
        "10.195.106.23",
        "10.195.106.24",
        "10.195.106.25",
        "10.195.106.26",
        "10.195.106.27"
      ]
      source_port_range = "*"

      description                                = ""
      destination_address_prefix                 = ""
      destination_application_security_group_ids = []
      destination_port_range                     = ""
      source_address_prefix                      = ""
      source_application_security_group_ids      = []
      source_port_ranges                         = []
      destination_address_prefixes               = []
    },
    {
      access                     = "Allow"
      destination_address_prefix = "10.234.30.9"
      destination_port_range     = "50501"
      direction                  = "Outbound"
      name                       = "OB_Allow_5"
      priority                   = 243
      protocol                   = "*"
      source_address_prefix      = "10.177.12.0/23"
      source_port_range          = "*"

      description                                = ""
      destination_address_prefix                 = ""
      destination_application_security_group_ids = []
      destination_port_range                     = ""
      source_address_prefix                      = ""
      source_application_security_group_ids      = []
      source_port_ranges                         = []
      source_address_prefixes                    = []
      destination_port_ranges                    = []
      destination_address_prefixes               = []
    },
    {
      access                     = "Allow"
      description                = "Allow AD Traffic"
      destination_address_prefix = "10.177.12.0/22"
      destination_port_range     = "*"
      direction                  = "Inbound"
      name                       = "IB_Allow_3"
      priority                   = 244
      protocol                   = "*"
      source_address_prefixes = [
        "10.210.137.0/24",
        "10.101.168.20",
        "10.101.168.28",
        "10.101.168.4",
        "10.101.66.84",
        "10.157.0.20",
        "10.157.0.21",
        "10.159.4.20",
        "10.159.4.21",
        "10.176.240.14",
        "10.176.240.15",
        "10.176.240.4",
        "10.176.240.5",
        "10.176.240.7",
        "10.178.240.4",
        "10.178.240.5",
        "10.180.240.10",
        "10.180.240.4",
        "10.180.240.5",
        "10.180.240.8",
        "10.180.240.9",
        "10.182.240.4",
        "10.182.240.5",
        "10.184.240.4",
        "10.184.240.5",
        "10.186.240.4",
        "10.186.240.5",
        "10.201.142.23",
        "10.201.168.12",
        "10.201.168.13",
        "10.201.168.20",
        "10.201.168.22",
        "10.201.168.28",
        "10.201.168.29",
        "10.201.168.4",
        "10.201.168.5",
        "10.216.2.25",
        "10.216.2.26",
        "10.218.2.25",
        "10.218.2.26",
        "10.232.5.105",
        "10.232.5.18",
        "10.232.5.25",
        "10.232.5.97",
        "10.232.5.98",
        "10.234.12.20",
        "10.234.140.20",
        "10.234.164.20",
        "10.234.44.20",
        "10.235.12.20",
        "10.235.12.25",
        "10.235.128.20",
        "10.235.128.21",
        "10.237.12.20",
        "10.239.12.20",
        "10.244.2.17",
        "10.244.2.18",
        "10.245.2.17"
      ]
      source_port_range = "*"

      description                                = ""
      destination_address_prefix                 = ""
      destination_application_security_group_ids = []
      destination_port_range                     = ""
      source_address_prefix                      = ""
      source_application_security_group_ids      = []
      source_port_ranges                         = []
      destination_port_ranges                    = []
      destination_address_prefixes               = []
    }
  ]
}

