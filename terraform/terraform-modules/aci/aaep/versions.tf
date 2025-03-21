terraform {
  required_version = ">= 0.15"
  required_providers {
    aci = {
      source  = "ciscodevnet/aci"
      version = "2.15.0"
    }
  }
}
