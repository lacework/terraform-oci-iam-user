<a href="https://lacework.com"><img src="https://techally-content.s3-us-west-1.amazonaws.com/public-content/lacework_logo_full.png" width="600"></a>

# terraform-oci-iam-user

[![GitHub release](https://img.shields.io/github/release/lacework/terraform-oci-iam-user.svg)](https://github.com/lacework/terraform-oci-iam-user/releases/)
[![Codefresh build status]( https://g.codefresh.io/api/badges/pipeline/lacework/terraform-modules%2Ftest-compatibility?type=cf-1&key=eyJhbGciOiJIUzI1NiJ9.NWVmNTAxOGU4Y2FjOGQzYTkxYjg3ZDEx.RJ3DEzWmBXrJX7m38iExJ_ntGv4_Ip8VTa-an8gBwBo)]( https://g.codefresh.io/pipelines/edit/new/builds?id=607e25e6728f5a6fba30431b&pipeline=test-compatibility&projects=terraform-modules&projectId=607db54b728f5a5f8930405d)

A Terraform Module to create a user and group to be used to integrate and OCI
cloud account with Lacework.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14 |
| <a name="requirement_oci"></a> [oci](#requirement\_oci) | >= 5.3.0 |
| <a name="requirement_tls"></a> [tls](#requirement\_tls) | >= 4.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_oci"></a> [oci](#provider\_oci) | >= 5.3.0 |
| <a name="provider_tls"></a> [tls](#provider\_tls) | >= 4.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [oci_identity_api_key.lacework_api_key](https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/identity_api_key) | resource |
| [oci_identity_group.lacework_group](https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/identity_group) | resource |
| [oci_identity_user.lacework_user](https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/identity_user) | resource |
| [oci_identity_user_capabilities_management.lacework_user_capabilities_management](https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/identity_user_capabilities_management) | resource |
| [oci_identity_user_group_membership.lacework_user_group_membership](https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/identity_user_group_membership) | resource |
| [tls_private_key.rsa_key](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_base_name"></a> [base\_name](#input\_base\_name) | Names for the created resources will be ${base\_name}\_{user,group} | `string` | `"lacework_security_integration"` | no |
| <a name="input_create"></a> [create](#input\_create) | Set to false to prevent module from creating any resources | `bool` | `true` | no |
| <a name="input_email"></a> [email](#input\_email) | Optional email associated with the created user | `string` | `"lacework@lacework.net"` | no |
| <a name="input_freeform_tags"></a> [freeform\_tags](#input\_freeform\_tags) | freeform tags for the resources created for Lacework integration | `map(any)` | `{}` | no |
| <a name="input_group_name"></a> [group\_name](#input\_group\_name) | Name of the identity group for the Lacework user (overrides base\_name) | `string` | `""` | no |
| <a name="input_tenancy_id"></a> [tenancy\_id](#input\_tenancy\_id) | OCID of the OCI tenancy to be integrated with Lacework | `string` | n/a | yes |
| <a name="input_user_name"></a> [user\_name](#input\_user\_name) | Name of the IAM user used for Lacework integration (overrides base\_name) | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_created"></a> [created](#output\_created) | Was the OCI user created |
| <a name="output_group_name"></a> [group\_name](#output\_group\_name) | Name of the group created to manage permissions for the integration user |
| <a name="output_group_ocid"></a> [group\_ocid](#output\_group\_ocid) | OCID of the group created to manage permissions for the integration user |
| <a name="output_user_name"></a> [user\_name](#output\_user\_name) | Name of the user created for the Lacework integration |
| <a name="output_user_ocid"></a> [user\_ocid](#output\_user\_ocid) | OCID of the user created for the Lacework integration |
| <a name="output_user_private_key_pem"></a> [user\_private\_key\_pem](#output\_user\_private\_key\_pem) | The private key of the API key of the user created for integration |
| <a name="output_user_public_key_fingerprint"></a> [user\_public\_key\_fingerprint](#output\_user\_public\_key\_fingerprint) | The public key fingerprint of the API key created for integration |

