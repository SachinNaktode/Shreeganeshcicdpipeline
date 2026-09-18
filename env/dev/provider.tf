terraform {
  required_version = ">= 1.5.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.2.0"
    }
  }






  backend "azurerm" {
    resource_group_name  = "Dev_RG"
    storage_account_name = "devprodsaa"
    container_name       = "tfstate"
    key                  = "dev/terraform.tfstate"
  }
}

provider "azurerm" {

  features {}

}