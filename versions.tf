# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0
# Azure Provider source and version being used
# We strongly recommend using the required_providers block to set the version of API you wanted to use
# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0
# Azure Provider source and version being used
# We strongly recommend using the required_providers block to set the version of API you wanted to use
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.2.0"
    }
  }
  backend "azurerm" {
  }

  required_version = ">= 1.0"
}

provider "azurerm" {
  features {}
}
