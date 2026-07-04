module "rgs" {
  source              = "../modules/resource_group"
  for_each            = var.rgs
  resource_group_name = each.value.rgname
  location            = each.value.rgloc
}


module "vnets" {
  source               = "../modules/virtual_network"
  for_each             = var.vnets
  virtual_network_name = each.value.virtual_network_name
  resource_group_name  = module.rgs[each.value.rgmap].rgnames
  location             = module.rgs[each.value.rgmap].rglocs
  address_space        = each.value.address_space
}


module "subnets" {
  source               = "../modules/subnet"
  for_each             = var.subnets
  subnet_name          = each.value.subnet_name
  virtual_network_name = module.vnets[each.value.vnetmap].vnetnames
  resource_group_name  = module.rgs[each.value.rgmap].rgnames
  address_prefixes     = each.value.address_prefixes
  service_endpoints    = each.value.service_ep
}


module "storage_account" {
  source                   = "../modules/storage_account"
  for_each                 = var.stgaccounts
  storage_account_name     = each.value.storage_account_name
  resource_group_name      = module.rgs[each.value.rgmap].rgnames
  location                 = module.rgs[each.value.rgmap].rglocs
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type
  subnet_ids               = [module.subnets[each.value.subnetmap].subnet_ids]
}

module "wvm" {
  source              = "../modules/windows_vm"
  for_each            = var.windows_vms
  vm_name             = each.value.vm_name
  resource_group_name = module.rgs[each.value.rgmap].rgnames
  location            = module.rgs[each.value.rgmap].rglocs
  subnet_id           = module.subnets[each.value.subnetmap].subnet_ids
  vm_size             = each.value.vm_size
  admin_username      = each.value.admin_username
  admin_password      = each.value.admin_password
}
