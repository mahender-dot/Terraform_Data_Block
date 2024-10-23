dev_rg = {
  jrg = {
    name     = "jointrgnew"
    location = "southindia"
  }
}

dev_vnet = {
  jvnet = {
    name                = "jvnetnew"
    location            = "southindia"
    resource_group_name = "jointrgnew"
    address_space       = ["10.0.0.0/16"]
  }
}

dev_sub = {
  jsub = {
    name                 = "jsub"
    resource_group_name  = "jointrgnew"
    virtual_network_name = "jvnetnew"
    address_prefixes     = ["10.0.0.0/24"]
  }
}

dev_ip = {
  jip1 = {
    name                = "jipnew"
    location            = "southindia"
    resource_group_name = "jointrgnew"
    allocation_method   = "Static"
  }
}

dev_nic = {
  jnic1 = {
    name                = "jnic2"
    location            = "southindia"
    resource_group_name = "jointrgnew"
    ip_configuration = {
    # name = "jnicip"
    # subnet_id = azurerm_subnet.jointsub.id  ye be maine data se call krwa diya h
    private_ip_address_allocation = "Dynamic"
    # public_ip_address_id = azurerm_public_ip.jointip.id   ye call maine data se krwa di hn 
  }
  }
}

dev_vm = {
  jvm1 = {
    name                            = "jvm"
    location                        = "southindia"
    resource_group_name             = "jointrgnew"
    size                            = "Standard_B1s"
    admin_username                  = "jointusername"
    admin_password                  = "password@123"
    disable_password_authentication = false
    # network_interface_ids = [ azurerm_network_interface.jointnic.id ] we called this via data block
#     os_disc = {
#     caching              = "ReadWrite"
#     storage_account_type = "Standard_LRS"
#   }
#   source_image_reference = {
#     publisher = "Canonical"
#     offer     = "0001-com-ubuntu-server-jammy"
#     sku       = "22_04-lts"
#     version   = "latest"
#   }
}
}
