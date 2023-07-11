# Required

variable "tenancy_id" {
  type = string
  description = "OCID of the OCI tenancy to be integrated with Lacework"
}

# Optional

variable "create" {
  type = bool
  default = true
  description = "Set to false to prevent module from creating any resources"
}

variable "defined_tags" {
  type = map
  default = {}
  description = "defined tags for the resources created for Lacework integration"
}

variable "freeform_tags" {
  type = map
  default = {}
  description = "freeform tags for the resources created for Lacework integration"
}

variable "email" {
  type = string
  default = "lacework@lacework.net"
  description = "Optional email associated with the created user"
}

variable "base_name" {
  type = string
  default = "lacework_security_integration"
  description = "Names for the created resources will be $${base_name}_{user,group}"
}

variable "user_name" {
  type = string
  default = ""
  description = "Name of the IAM user used for Lacework integration (overrides base_name)"
}

variable "group_name" {
  type = string
  default = ""
  description = "Name of the identity group for the Lacework user (overrides base_name)"
}