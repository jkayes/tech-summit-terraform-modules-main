/*

Please do the following:

1. Create a databricks_schema in the main catalog. https://registry.terraform.io/providers/databricks/databricks/latest/docs/resources/schema
    a. Please set the name to data.databricks_current_user.me.alphanumeric

After creating this resource please run:

../../terraform plan

../../terraform apply

*/

resource "databricks_schema" "my_schema" {
  catalog_name = "main"
  name         = data.databricks_current_user.me.alphanumeric
  comment      = "this schema is managed by terraform"
  properties = {
    kind = "various"
  }
}