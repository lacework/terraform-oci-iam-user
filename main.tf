locals {
  user_name  = length(var.user_name) > 0 ? var.user_name : "${var.base_name}_user"
  group_name = length(var.group_name) > 0 ? var.group_name : "${var.base_name}_group"
}

resource "oci_identity_user" "lacework_user" {
  count = var.create ? 1 : 0

  compartment_id = var.tenancy_id
  description    = "Identity user used for Lacework integration"
  name           = local.user_name
  email          = var.email
  freeform_tags  = var.freeform_tags
}

resource "oci_identity_user_capabilities_management" "lacework_user_capabilities_management" {
  count                        = var.create ? 1 : 0
  user_id                      = oci_identity_user.lacework_user[count.index].id
  can_use_api_keys             = true
  can_use_auth_tokens          = false
  can_use_console_password     = false
  can_use_customer_secret_keys = false
  can_use_smtp_credentials     = false
}

resource "oci_identity_group" "lacework_group" {
  count          = var.create ? 1 : 0
  compartment_id = var.tenancy_id
  description    = "Identity group for the Lacework integration user"
  name           = local.group_name
  freeform_tags  = var.freeform_tags
}

resource "oci_identity_user_group_membership" "lacework_user_group_membership" {
  count    = var.create ? 1 : 0
  group_id = oci_identity_group.lacework_group[count.index].id
  user_id  = oci_identity_user.lacework_user[count.index].id
}

