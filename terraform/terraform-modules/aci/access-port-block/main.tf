resource "aci_access_port_block" "access_pb" {
  access_port_selector_dn = data.aci_access_port_selector.dev_acc_port_select.id
  name                    = var.name
  description             = var.description
  from_card               = var.from_card
  from_port               = var.from_port
  to_card                 = var.to_card
  to_port                 = var.to_port
}
