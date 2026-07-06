rgs = {
  rg1 = {
    rgname = "rg-dev-app-ci"
    rgloc  = "Central India"
  }
}

vnets = {
  vnet1 = {
    virtual_network_name = "vnet-dev-app-ci"
    rgmap                = "rg1"
    address_space        = ["10.0.0.0/16"]
  }
}

subnets = {
  subnet1 = {
    subnet_name      = "subnet-dev-app-ci"
    vnetmap          = "vnet1"
    rgmap            = "rg1"
    address_prefixes = ["10.0.1.0/24"]
  }
}

stgaccounts = {
  stg1 = {
    storage_account_name     = "stgdevappci"
    rgmap                    = "rg1"
    account_tier             = "Standard"
    account_replication_type = "LRS"
    subnetmap                = "subnet1"
  }
}


windows_vms = {
  vm1 = {
    vm_name             = "vm-dev-app-ci"
    rgmap               = "rg1"
    subnetmap           = "subnet1"
    storage_account_map = "stg1"
    vm_size             = "Standard_D2s_v3"
    admin_username      = "adminuser"
    admin_password      = "Iwant2learn2026"
  }
}


private_endpoints = {
  pe1 = {
    pe_name   = "pe-dev-app-ci"
    rgmap     = "rg1"
    subnetmap = "subnet1"
    stgmap    = "stg1"
    pdzmap    = "pdz1"
  }
}

role_assignments = {
  ra1 = {
    vm_map               = "vm1"
    storage_account_map  = "stg1"
    role_definition_name = "Storage Blob Data Contributor"
  }
}

pdzs = {
  pdz1 = {
    pdzname = "privatelink.blob.core.windows.net"
    rgmap   = "rg1"
    vnetmap = "vnet1"
  }
}
