# Required

variable "tenancy_id" {
  type        = string
  description = "OCID of the OCI tenancy to be integrated with Lacework"
}

variable "email" {
  type        = string
  description = "Email associated with the created user"
}

# Optional

variable "create" {
  type        = bool
  default     = true
  description = "Set to false to prevent module from creating any resources"
}

variable "freeform_tags" {
  type        = map(any)
  default     = {}
  description = "freeform tags for the resources created for Lacework integration"
}

variable "name_prefix" {
  type        = string
  default     = "lw_"
  description = "Names for the created resources will be $${name_prefix}_{user,group}"
}

variable "user_name" {
  type        = string
  default     = ""
  description = "Name of the IAM user used for Lacework integration (overrides name_prefix)"
}

variable "group_name" {
  type        = string
  default     = ""
  description = "Name of the identity group for the Lacework user (overrides name_prefix)"
}
