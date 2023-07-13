locals {
  user_name  = length(var.user_name) > 0 ? var.user_name : "${var.name_prefix}_user"
  group_name = length(var.group_name) > 0 ? var.group_name : "${var.name_prefix}_group"
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

resource "tls_private_key" "rsa_key" {
  count     = var.create ? 1 : 0
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "oci_identity_api_key" "lacework_api_key" {
  count     = var.create ? 1 : 0
  user_id   = oci_identity_user.lacework_user[count.index].id
  key_value = tls_private_key.rsa_key[count.index].public_key_pem
}

# Use public_key_fingerprint_md5, private_key_pem, public_key_pem 