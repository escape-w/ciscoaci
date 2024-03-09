resource "aci_leaf_interface_profile" "leaf_interprof" {
  name        = var.leaf_interprof.name
  description = var.leaf_interprof.description
}

resource "aci_access_port_selector" "access_ps" {
  leaf_interface_profile_dn      = aci_leaf_interface_profile.leaf_interprof.id
  description                    = var.access_ps.description
  name                           = var.access_ps.name
  access_port_selector_type      = var.access_ps.access_port_selector_type
  relation_infra_rs_acc_base_grp = var.access_ps.relation_infra_rs_acc_base_grp
}

resource "aci_access_port_block" "access_pb" {
  access_port_selector_dn = aci_access_port_selector.access_ps.id
  name                    = var.access_pb.name
  description             = var.access_pb.description
  from_card               = var.access_pb.from_card
  from_port               = var.access_pb.from_port
  to_card                 = var.access_pb.to_card
  to_port                 = var.access_pb.to_port
}
