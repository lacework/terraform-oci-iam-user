module "lacework_iam_user" {
  source = "../.."
  tenancy_id = var.tenancy_id
	base_name = "lacework_test"
}

variable "tenancy_id" {
  type = string
  description = "OCID of the tenancy to be integrated with Lacework"
}
