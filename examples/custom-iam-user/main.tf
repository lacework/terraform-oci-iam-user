module "lacework_iam_user" {
  source = "../.."
  tenancy_id = var.tenancy_ocid
	base_name = "lacework_test"
}

variable "tenancy_ocid" {
  type = string
  description = "OCID of the tenancy to be integrated with Lacework"
}
