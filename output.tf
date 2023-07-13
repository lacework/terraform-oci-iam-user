output "created" {
  value       = var.create
  description = "Was the OCI user created"
}

output "user_ocid" {
  value       = var.create ? oci_identity_user.lacework_user[0].id : ""
  description = "OCID of the user created for the Lacework integration"
}

output "user_name" {
  value       = var.create ? oci_identity_user.lacework_user[0].name : ""
  description = "Name of the user created for the Lacework integration"
}

output "group_ocid" {
  value       = var.create ? oci_identity_group.lacework_group[0].id : ""
  description = "OCID of the group created to manage permissions for the integration user"
}

output "group_name" {
  value       = var.create ? oci_identity_group.lacework_group[0].name : ""
  description = "Name of the group created to manage permissions for the integration user"
}

output "user_private_key_pem" {
  value       = var.create ? tls_private_key.rsa_key[0].private_key_pem : ""
  description = "The private key of the API key of the user created for integration"
  sensitive   = true
}

output "user_public_key_fingerprint" {
  value       = var.create ? oci_identity_api_key.lacework_api_key[0].fingerprint : ""
  description = "The public key fingerprint of the API key created for integration"
}

