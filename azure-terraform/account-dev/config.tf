terraform {
   required_version = ">= 0.11.11"
  backend "azurerm" {
    resource_group_name  = "StorageAccount-ResourceGroup"
    storage_account_name = "devaccount"
    container_name       = "terraform-state"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  version = "=2.0.0"
  features {}
}
