module "lapp" {

  source = "../../aci/leaf-access-pp"

  for_each = local.lapps

  name                          = each.value.name
  description                   = try(each.value.description, null)
  relation_infra_rs_att_ent_p   = try(each.value.relation_infra_rs_att_ent_p, null)
  relation_infra_rs_cdp_if_pol  = try(each.value.relation_infra_rs_cdp_if_pol, null)
  relation_infra_rs_h_if_pol    = try(each.value.relation_infra_rs_h_if_pol, null)
  relation_infra_rs_lldp_if_pol = try(each.value.relation_infra_rs_lldp_if_pol, null)

}

module "lip" {

  source = "../../aci/leaf-interface-profile"

  for_each = local.lips

  leaf_interprof = each.value.leaf_interprof
  access_ps      = each.value.access_ps
  access_pb      = each.value.access_pb
}


module "leaf_access_bp" {

  source = "../../aci/leaf-access-bp"

  for_each = local.labps

  name                          = each.value.name
  lag_t                         = each.value.lag_t
  description                   = try(each.value.description, null)
  relation_infra_rs_lldp_if_pol = try(each.value.relation_infra_rs_lldp_if_pol, null)
  relation_infra_rs_h_if_pol    = try(each.value.relation_infra_rs_h_if_pol, null)
  relation_infra_rs_cdp_if_pol  = try(each.value.relation_infra_rs_cdp_if_pol, null)
  relation_infra_rs_att_ent_p   = try(each.value.relation_infra_rs_att_ent_p, null)
  relation_infra_rs_lacp_pol    = try(each.value.relation_infra_rs_lacp_pol, null)
}



