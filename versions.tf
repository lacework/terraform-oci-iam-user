terraform {
  required_version = ">= 0.14"

  required_providers {
    oci = {
      source  = "oracle/oci"
      version = ">= 5.3.0"
    }

    tls = {
      source  = "hashicorp/tls"
      version = ">= 4.0.0"
    }

    lacework = {
      source  = "lacework/lacework"
      version = "~> 1.18"
    }
  }
}
