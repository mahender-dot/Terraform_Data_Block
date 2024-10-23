module "mod_rg" {
  source   = "../staging_env/resource_group"
  joint_rg = var.dev_rg
}

module "mod_vnet" {
  source     = "../staging_env/vnet"
  joint_vnet = var.dev_vnet
  depends_on = [module.mod_rg]
}

module "mod_sub" {
  source     = "../staging_env/subnet"
  joint_sub  = var.dev_sub
  depends_on = [ module.mod_vnet ]
}

module "mod_ip" {
  source     = "../staging_env/public_ip"
  joint_ip   = var.dev_ip
  depends_on = [ module.mod_sub]
}

module "mod_nic" {
  source     = "../staging_env/network_interface"
  joint_nic  = var.dev_nic
  depends_on = [ module.mod_ip , module.mod_sub ]
}

module "mod_vm" {
  source     = "../staging_env/virtual_machine"
  joint_vm   = var.dev_vm
  depends_on = [ module.mod_nic ]
}



