resource "aci_leaf_access_port_policy_group" "leaf_ppg" {
  description                   = var.description
  name                          = var.name
  relation_infra_rs_lldp_if_pol = var.relation_infra_rs_lldp_if_pol
  relation_infra_rs_h_if_pol    = var.relation_infra_rs_h_if_pol
  relation_infra_rs_cdp_if_pol  = var.relation_infra_rs_cdp_if_pol
  relation_infra_rs_att_ent_p   = var.relation_infra_rs_att_ent_p

}


