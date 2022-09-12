/*
PLEASE DO NOT MODIFY.

Few things to note we are using this to declare variables.

More information about variables here: https://www.terraform.io/language/values/variables

More information about locals here: https://www.terraform.io/language/values/locals

**/

variable "prefix" {
  type    = string
  default = "techsummit2022"
}

resource "random_string" "suffix" {
  special = false
  upper   = false
  length  = 8
}

locals {
  groupname = "mygroup${random_string.suffix.result}"
}


