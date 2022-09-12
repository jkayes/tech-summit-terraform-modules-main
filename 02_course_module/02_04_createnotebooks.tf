/*

Please do the following:

1. Create a databricks_current_user data source as we will use the name to help create notebooks. https://registry.terraform.io/providers/databricks/databricks/latest/docs/data-sources/current_user
2. Create the two notebooks using the resource https://registry.terraform.io/providers/databricks/databricks/latest/docs/resources/notebook
    a. Use the notebooks provided for you in the notebooks folder.
    b. To use relative path please use path.module

Optionally explore for_each and try to programatically list all the files and create the notebooks. Look in solutions if you get stuck.
https://www.terraform.io/language/meta-arguments/for_each

After creating these resources please run:

../terraform init

../terraform plan

../terraform apply

*/

#data "databricks_current_user" "me" {
#}
#
#resource "databricks_notebook" "quickstart" {
#  ...
#}
#
#resource "databricks_notebook" "helloworld" {
#  ...
#}
#
#resource "databricks_notebook" "foreach_notebooks" {
#  ...
#}