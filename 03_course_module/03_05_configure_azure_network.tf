/*

Note:
  For all locations please use data.azurerm_resource_group.techsummitrg.location
  For all resource group name please use data.azurerm_resource_group.techsummitrg.name
  For virtual network and nsg please use tags = local.tags

Please do the following:

1. Create an azure virtual network using this: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network
    a. Please use "10.0.0.0/16" for the address space
    b. Please use the local.prefix variable as part of your subnet name something like: format("%s-vnet", local.prefix)
    c. Please do not create subnets inside the virtual network resource. We will be doing that separately.
2. Create two subnets (private and public): https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet
    a. Please use the following CIDR spaces for the two subnets: 10.0.0.0/25, 10.0.0.128/25
    b. Please also create a subnet delegation block and add the following actions to the delegation:
        "Microsoft.Network/virtualNetworks/subnets/join/action",
        "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action",
        "Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action",
3. Create an NSG using https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_security_group
4. Create an NSG association for each of the subnets using https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet_network_security_group_association

After creating this resource please run:

../terraform init

../terraform plan

../terraform apply

*/


#resource "azurerm_virtual_network" "vnet" {
#  ...
#}
#
#resource "azurerm_subnet" "public-subnet" {
#  ...
#}
#
#resource "azurerm_subnet" "private-subnet" {
#  ...
#}
#
#resource "azurerm_network_security_group" "nsg" {
#  ...
#}
#
#
#resource "azurerm_subnet_network_security_group_association" "nsg_association_1" {
#  ...
#}
#
#resource "azurerm_subnet_network_security_group_association" "nsg_association_2" {
#  ...
#}
