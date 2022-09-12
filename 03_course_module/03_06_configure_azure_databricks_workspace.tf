/*

Note:
  Hashicorp maintains Azurerm with MSFT and they also own Databricks workspace creation as part of the azurerm provider.
  This is why we never configured a databricks provider for this exercise.

Please do the following:

1. Create an azure databricks workspace using the vnet, subnets and association ids in the previous section.
  https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/databricks_workspace

2. Create an output with the databricks workspace url

After creating this resource please run:

../terraform plan

../terraform apply

After the end of the module please run:

../terraform destroy

*/


#resource "azurerm_databricks_workspace" "techsummit2022_workspace" {
#  ...
#}
#
#output "databricks_ws_url" {
#  ...
#}