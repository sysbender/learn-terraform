# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.21.1"
    }
    random = {
      source = "hashicorp/random"
      version = "~> 3.6.3"
    }
  }

  backend "azurerm" {
    resource_group_name = "rg-terraform-state-dev"
    storage_account_name = "st7dmss4e2qk"
    container_name = "tfstate"
    key = "observability-dev"
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  
}