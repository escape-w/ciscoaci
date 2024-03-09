resource "aci_cdp_interface_policy" "cdp" {
  name        = var.name
  admin_st    = var.admin_st
  description = var.description
}



