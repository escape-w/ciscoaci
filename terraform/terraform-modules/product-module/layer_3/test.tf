terraform {
  required_version = ">= 1.2, < 2.0"
  required_providers {
    aci = {
      source  = "ciscodevnet/aci"
      version = "2.11.1"
    }
  }
}
