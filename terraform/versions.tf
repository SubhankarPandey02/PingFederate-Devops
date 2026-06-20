terraform {
  required_version = ">=1.4"
  required_providers {
    pingfederate = {
      version = "~> 1.0"
      source  = "pingidentity/pingfederate"
    }
  }
}
