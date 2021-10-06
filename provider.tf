terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.79"
    }
  }

  required_version = ">= 1.0.0"
}

provider "azurerm" {
  features {}
  tenant_id = "155d0f2f-267b-4295-8c01-36d51f3d33ac"
}
