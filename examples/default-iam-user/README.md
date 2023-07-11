# Default Example

This example creates an IAM user, group, and policy needed for Lacework integration/

```hcl
module "lacework_iam_user" {
  source = "../.."
  tenancy_id = var.tenancy_id
}

variable "tenancy_id" {
  type = string
  description = "OCID of the tenancy to be integrated with Lacework"
}

```
