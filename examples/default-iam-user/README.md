# Default Example

This example creates an OCI user, group, and policy needed for Lacework
integration. The following example will use the OCI credentials in your
~/.oci/config file. See the OCI Terraform Provider documentation [on
authentication](https://docs.oracle.com/en-us/iaas/Content/API/SDKDocs/terraformproviderconfiguration.htm) for alternative approaches of providing
credentials to the OCI provider.

```hcl
module "lacework_iam_user" {
  source = "lacework/iam-user/oci"
  tenancy_id = var.tenancy_id
  email = "email@example.com"
}

variable "tenancy_id" {
  type = string
  description = "OCID of the tenancy to be integrated with Lacework"
}
```
