terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.75.0"
    }
  }
}

provider "azurerm" {
  features {}
  use_oidc = true

}

terraform {
  backend "azurerm" {
    resource_group_name  = "terraformbackendRG"
    storage_account_name = "tfbackendstorag12349871"
    container_name       = "tfbackendcontainer"
    key                  = "first.tfstate"
  }
}