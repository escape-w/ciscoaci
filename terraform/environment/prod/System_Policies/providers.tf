terraform {
  required_version = ">= 1.2, < 2.0"
  required_providers {
    aci = {
      source  = "ciscodevnet/aci"
      version = "2.11.1"
    }
  }
}

provider "aci" {
  # APIC Username
  username = "admin"
  # APIC Password
  password = "!v3G@!4@Y"
  # APIC URL
  url      = "https://sandboxapicdc.cisco.com/"
  insecure = true
  #SET IN ENVIRONMENT VARIABLES
}
