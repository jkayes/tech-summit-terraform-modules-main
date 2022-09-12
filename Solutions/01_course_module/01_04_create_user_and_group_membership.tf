/*

Note:
  For all locations please use data.azurerm_resource_group.techsummitrg.location
  For all resource group name please use data.azurerm_resource_group.techsummitrg.name

Please do the following:

1. Create a databricks_user using your email. https://registry.terraform.io/providers/databricks/databricks/latest/docs/resources/user
    a. Give yourself permissions to create clusters, pools and sql access.
    b. Set force to true
    c. Set the username to your email as you will need to login in the next section.
2. Create a databricks group. https://registry.terraform.io/providers/databricks/databricks/latest/docs/resources/group
    a. use local.groupname for display_name
3. Add your self to the group. https://registry.terraform.io/providers/databricks/databricks/latest/docs/resources/group_member

After creating these resources please run:

../../terraform init

../../terraform plan

../../terraform apply

After the end of the module please do not destroy your user resource.

*/


resource "databricks_user" "my_user" {
  user_name    = "sri.tikkireddy@databricks.com"
  display_name = "Sri Tikkireddy"
  allow_cluster_create = true
  allow_instance_pool_create = true
  databricks_sql_access = true
  force = true
}

resource "databricks_group" "my_group" {
  display_name               = local.groupname
  allow_cluster_create       = true
  allow_instance_pool_create = true
}

resource "databricks_group_member" "gm" {
  group_id  = databricks_group.my_group.id
  member_id = databricks_user.my_user.id
}
