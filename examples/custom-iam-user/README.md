# Skip creation of resources

This example shows how to use the Terraform module with custom names for
resources. The following example will use the OCI credentials in your
~/.oci/config file. See the OCI Terraform Provider documentation [on
authentication](https://docs.oracle.com/en-us/iaas/Content/API/SDKDocs/terraformproviderconfiguration.htm) for alternative approaches of providing
credentials to the OCI provider.

```hcl
module "lacework_iam_user" {
  source = "lacework/iam-user/oci"
  tenancy_id = var.tenancy_ocid
  email = "example@example.com"
}

variable "tenancy_ocid" {
  type = string
  description = "OCID of the tenancy to be integrated with Lacework"
}

```
