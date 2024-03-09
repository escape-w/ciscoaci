resource "aci_lldp_interface_policy" "lldp" {
  description = var.description
  name        = var.name
  admin_rx_st = var.admin_rx_st
  admin_tx_st = var.admin_tx_st
}