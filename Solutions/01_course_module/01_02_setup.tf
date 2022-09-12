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

locals {
  groupname = "mygroup${random_string.suffix.result}"
}


