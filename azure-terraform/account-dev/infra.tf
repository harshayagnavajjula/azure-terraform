module "resource_group" {
  source                   = "./modules/azure-resource-group"
  resource_group_name      = "test-candidate"
  locations                = var.locations
  common_tags              = var.common_tags
}

module "eastus_infra" {
  resource_group_name               = module.resource_group.rg_name[0]
  location                          = element(var.locations, 1)

  vnet_address_space                = ["10.1.16.0/21", "10.1.24.0/22", "10.1.28.0/23", "10.1.30.0/24"]
  subnet_address_prefix             = ["10.1.16.0/24"]
  vm_name_prefix                    = "test-eastus-vm"
  compute_nic_name                  = "eastus-test-nic"
  compute_vm_admin_username         = "dev-admin"
  key_file_name                     = "test-eastus"
}

module "westus_infra" {
  resource_group_name               = module.resource_group.rg_name[1]
  location                          = element(var.locations, 2)

  vnet_address_space                = ["10.2.16.0/21","10.2.24.0/22","10.2.28.0/23","10.2.30.0/24"]
  subnet_address_prefix             = ["10.2.16.0/24"]
  vm_name_prefix                    = "test-westus-vm"
  compute_nic_name                  = "westus-test-nic"
  compute_vm_admin_username         = "dev-admin"
  key_file_name                     = "test-westus
}
