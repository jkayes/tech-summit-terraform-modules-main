/*
Terraform provider required providers block.

You can find the appropriate required_providers block using https://registry.terraform.io/providers/databricks/databricks/1.2.1 and
in the top right click use provider and it should give you the block. You will need different providers for different functionality.

You can specify versions or use latest by not providing a version. You should pin your providers to a fixed version in case a new version
is not backwards compatible.

For this exercise we will be using azurerm and the random provider.
**/

terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
    random = {
      source = "hashicorp/random"
      version = "3.4.1"
    }
  }
}