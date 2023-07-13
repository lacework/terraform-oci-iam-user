module "lacework_iam_user" {
  source = "../.."
  tenancy_id = var.tenancy_ocid
  email = "example@example.com"
}

variable "tenancy_ocid" {
  type = string
  description = "OCID of the tenancy to be integrated with Lacework"
}
