resource "aci_leaf_access_bundle_policy_group" "leaf_bpg" {
  name                          = var.name
  description                   = var.description
  lag_t                         = var.lag_t
  relation_infra_rs_lldp_if_pol = var.relation_infra_rs_lldp_if_pol
  relation_infra_rs_h_if_pol    = var.relation_infra_rs_h_if_pol
  relation_infra_rs_cdp_if_pol  = var.relation_infra_rs_cdp_if_pol
  relation_infra_rs_att_ent_p   = var.relation_infra_rs_att_ent_p
  relation_infra_rs_lacp_pol    = var.relation_infra_rs_lacp_pol
}