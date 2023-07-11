# Skip creation of resources

This example shows how to use the Terraform module with custom names for
resources.

```hcl
module "lacework_iam_user" {
  source = "../.."
  tenancy_id = var.tenancy_id
  base_name = "lacework_test"
}

variable "tenancy_id" {
  type = string
  description = "OCID of the tenancy to be integrated with Lacework"
}
```
