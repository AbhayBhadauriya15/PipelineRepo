module "resource_group" {
  source              = "../resource_group"
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "storage_accounts" {
  source                = "../azurerm_storage_account" 
  resource_group_name   = module.resource_group.name
  location              = var.location
  storage_account_name  = var.storage_account_name
  container_name        = var.container_name
}

