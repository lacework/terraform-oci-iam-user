module "lacework_iam_user" {
  source      = "../.."
  tenancy_id  = var.tenancy_ocid
  email       = "example@example.com"
  user_name   = "custom_user_name"
  group_name  = "custom_group_name"
}

variable "tenancy_ocid" {
  type        = string
  description = "OCID of the tenancy to be integrated with Lacework"
}
