/*

Note:
  Hashicorp maintains Azurerm with MSFT and they also own Databricks workspace creation as part of the azurerm provider.
  This is why we never configured a databricks provider for this exercise.

Please do the following:

1. Create an azure databricks workspace using the vnet, subnets and association ids in the previous section.
  https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/databricks_workspace

2. Create an output with the databricks workspace url

After creating this resource please run:

../../terraform plan

../../terraform apply

After the end of the module please run:

../terraform destroy

*/


resource "azurerm_databricks_workspace" "techsummit2022_workspace" {
  name                          = "databricks-test"
  resource_group_name           = data.azurerm_resource_group.techsummitrg.name
  managed_resource_group_name   = local.managed_rg
  location                      = data.azurerm_resource_group.techsummitrg.location
  sku                           = "premium"
  public_network_access_enabled = true # no front end privatelink deployment

  custom_parameters {
    no_public_ip = true
    public_subnet_name = "public-subnet"
    public_subnet_network_security_group_association_id = azurerm_subnet_network_security_group_association.nsg_association["public"].id
    private_subnet_name = "private-subnet"
    private_subnet_network_security_group_association_id = azurerm_subnet_network_security_group_association.nsg_association["private"].id
    storage_account_sku_name = "Standard_LRS"
    virtual_network_id = azurerm_virtual_network.vnet.id
  }
  tags                          = local.tags
}

output "databricks_ws" {
  value = azurerm_databricks_workspace.techsummit2022_workspace.workspace_url
}