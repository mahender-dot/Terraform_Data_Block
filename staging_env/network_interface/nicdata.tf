data "azurerm_public_ip" "datapip" {
  name                = "jipnew"
  resource_group_name = "jointrgnew"
}

data "azurerm_subnet" "datasubnet" {
  name                 = "jsub"
  virtual_network_name = "jvnetnew"
  resource_group_name  = "jointrgnew"
}