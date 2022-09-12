/*

Please do the following:

1. Create a databricks job using a notebook task pointing to the hello_world notebook you have created https://registry.terraform.io/providers/databricks/databricks/latest/docs/resources/job
    a. Use the spark version using the datasource
    b. Use the node_type_id using the node type provided.
    c. Make sure the job name uses your name for uniqueness
    d. Please use a notebook_task and note mtj tasks.

After creating this resource please run:

../../terraform plan

../../terraform apply

After the end of the module please run:

../terraform destroy

*/

data "databricks_spark_version" "latest" {}
data "databricks_node_type" "smallest" {
  local_disk = true
}

resource "databricks_job" "this" {
  name = "UC Demo Job ${data.databricks_current_user.me.alphanumeric}"

  new_cluster {
    num_workers   = 1
    spark_version = data.databricks_spark_version.latest.id
    node_type_id  = data.databricks_node_type.smallest.id
  }

  notebook_task {
    notebook_path = databricks_notebook.helloworld.path
  }
}