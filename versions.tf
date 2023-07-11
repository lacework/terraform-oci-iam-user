terraform {
  required_version = ">= 0.14"

  required_providers {
    oci = {
      source  = "oracle/oci"
      version = ">= 5.3.0"
    }
  }
}
