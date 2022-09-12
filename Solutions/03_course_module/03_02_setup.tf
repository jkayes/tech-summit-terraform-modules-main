/*
PLEASE DO NOT MODIFY.

Few things to note we are using this to declare variables.

More information about variables here: https://www.terraform.io/language/values/variables

More information about locals here: https://www.terraform.io/language/values/locals

Please fill in the tags with your specific email id.

**/

variable "region" {
  type    = string
  default = "eastus"
}

variable "prefix" {
  type    = string
  default = "techsummit2022"
}

resource "random_string" "suffix" {
  special = false
  upper   = false
  length  = 6
}

resource "random_string" "managed_rg_suffix" {
  special = false
  upper   = false
  length  = 10
}

locals {
  managed_rg = "techsummit-mrg-${random_string.managed_rg_suffix.result}"
  prefix = "techsummit2022demo${random_string.suffix.result}"
  tags = {
    Environment = "Demo"
    Owner       = "...."
  }
}
