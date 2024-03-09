resource "aci_cdp_interface_policy" "cdp" {
  # for_each = var.cdp

  # name = each.value.name
  # admin_st = each.value.admin_st
  # description = each.value.description

  name        = var.cdp.name
  admin_st    = var.cdp.admin_st
  description = var.cdp.description
}
resource "aci_lldp_interface_policy" "lldp" {
  description = var.lldp.description
  name        = var.lldp.name
  admin_rx_st = var.lldp.admin_rx_st
  admin_tx_st = var.lldp.admin_tx_st
}
resource "aci_fabric_if_pol" "llp" {
  name        = var.llp.name
  description = var.llp.description
  auto_neg    = var.llp.auto_neg
  fec_mode    = var.llp.fec_mode
  speed       = var.llp.speed
}
resource "aci_lacp_policy" "lacp" {
  description = var.lacp.description
  name        = var.lacp.name
  ctrl        = var.lacp.ctrl
  max_links   = var.lacp.max_links
  min_links   = var.lacp.min_links
  mode        = var.lacp.mode
}



