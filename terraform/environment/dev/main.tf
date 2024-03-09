#Vlanpool
module "vlpool" {
  source = "../../terraform-modules/aci/vlan-pool"
  for_each = {
    for v in var.vlpool : "${v.name_alias}" => v
  }
  vlpool_name       = each.value.vlpool_name
  description       = each.value.description
  alloc_mode_vlpool = each.value.alloc_mode_vlpool
  from              = each.value.from
  to                = each.value.to
  alloc_mode_ranges = each.value.alloc_mode_ranges
  ranges_role       = each.value.ranges_role
  name_alias        = each.value.name_alias
}
#Physical domain and AAEP
module "physical_domain" {
  source                    = "../../terraform-modules/aci/physical-domain"
  aaep                      = var.physical_domain.aaep
  physical_domain           = var.physical_domain.name
  description_aaep          = var.physical_domain.description_aaep
  relation_infra_rs_dom_p   = module.physical_domain.physical_domain_id
  relation_infra_rs_vlan_ns = module.vlpool[var.physical_domain.vlpool_name_alias].vlpool_id
  depends_on                = [module.vlpool]
}
#Interface Sub Policies
module "interafce_sub_policies" {
  source = "../../terraform-modules/aci/interface-sub-policy"
  cdp    = var.interafce_sub_policies.cdp
  lldp   = var.interafce_sub_policies.lldp
  llp    = var.interafce_sub_policies.llp
  lacp   = var.interafce_sub_policies.lacp
}
#Interface Access Policies
module "leaf_access_port_policy" {
  source = "../../terraform-modules/aci/leaf-access-pp"
  for_each = {
    for v in var.leaf_access_port_policy : "${v.name}" => v
  }
  name                          = each.value.name
  description                   = ""
  relation_infra_rs_lldp_if_pol = module.interafce_sub_policies.lldp_id
  relation_infra_rs_h_if_pol    = module.interafce_sub_policies.llp_id
  relation_infra_rs_cdp_if_pol  = module.interafce_sub_policies.cdp_id
  relation_infra_rs_att_ent_p   = module.physical_domain.aeep_id
}

module "leaf_access_bulk_policy" {
  source = "../../terraform-modules/aci/leaf-access-bp"
  for_each = {
    for v in var.leaf_access_bulk_policy : "${v.name}" => v
  }
  name                          = each.value.name
  description                   = ""
  lag_t                         = each.value.lag_t
  relation_infra_rs_lldp_if_pol = module.interafce_sub_policies.lldp_id
  relation_infra_rs_h_if_pol    = module.interafce_sub_policies.llp_id
  relation_infra_rs_cdp_if_pol  = module.interafce_sub_policies.cdp_id
  relation_infra_rs_att_ent_p   = module.physical_domain.aeep_id
  relation_infra_rs_lacp_pol    = each.value.relation_infra_rs_lacp_pol_enable == true ? module.interafce_sub_policies.lacp_id : ""
}

#leaf profile
module "leaf_profile_aci" {
  source = "../../terraform-modules/aci/leaf-profile"
  for_each = {
    for v in var.leaf_profile_aci : "${v.leaf_profile.name}" => v
  }
  leaf_profile = each.value.leaf_profile
}
#leaf interface profile
module "leaf_interface_profile" {
  source = "../../terraform-modules/aci/leaf-interface-profile"
  for_each = {
    for v in var.leaf_interface_profile : "${v.leaf_interprof.name}" => v
  }
  leaf_interprof                 = each.value.leaf_interprof
  access_ps                      = each.value.access_ps
  access_pb                      = each.value.access_pb
  relation_infra_rs_acc_base_grp = each.value.bulk_policy_enable == true ? module.leaf_access_bulk_policy[each.value.leaf_to_access_policy].leaf_access_bulk_policy_id : module.leaf_access_port_policy[each.value.leaf_to_access_policy].leaf_access_port_policy_id
  depends_on                     = [module.leaf_access_bulk_policy, module.leaf_access_port_policy]
}
#VPC Secutiry Group
module "vpc_security_group" {
  source = "../../terraform-modules/aci/vpc-security"
  vpc_pg = var.vpc_pg
}

#EPG Static Paths
module "epg_static_paths" {
  source             = "../../terraform-modules/aci/static-paths"
  for_each           = var.epg_static_paths
  application_epg_dn = each.value.epg_with_subnet == true ? module.epg_bd_subnet[each.value.vlan_id].epg_id : module.epg_bd[each.value.vlan_id].epg_id
  static_config      = each.value.static_config
  depends_on         = [module.epg_bd, module.epg_bd_subnet]
}
#EPG to Domain binding
module "epg_to_physical_domain" {
  source             = "../../terraform-modules/aci/epg-to-domain"
  for_each           = var.epg_to_physical_domain
  application_epg_dn = each.value.epg_with_subnet == true ? module.epg_bd_subnet[each.value.vlan_id].epg_id : module.epg_bd[each.value.vlan_id].epg_id
  target_domain      = module.physical_domain.physical_domain_id
  binding_type       = each.value.binding_type
  encap_mode         = each.value.encap_mode
  epg_cos            = each.value.epg_cos
  epg_cos_pref       = each.value.epg_cos_pref
  instr_imedcy       = each.value.instr_imedcy
  switching_mode     = each.value.switching_mode
  depends_on         = [module.epg_bd, module.epg_bd_subnet, module.physical_domain]

}
#DHCP
module "dhcp" {
  source             = "../../terraform-modules/aci/dhcp"
  for_each           = var.dhcp
  target_tenant      = module.tenant[each.value.target_tenant].tenant_id
  dhcp_name          = each.value.dhcp_name
  dhcp_annotation    = each.value.dhcp_annotation
  dhcp_description   = each.value.dhcp_description
  dhcp_mode          = each.value.dhcp_mode
  dhcp_name_alias    = each.value.dhcp_name_alias
  dhcp_owner         = each.value.dhcp_owner
  relation_dhcp_addr = each.value.relation_dhcp_addr
  depends_on         = [module.tenant, module.application_profile, module.epg_bd, module.epg_bd_subnet]

}
#Filters and Filter Entry
# module "rul_filters" {
#   source        = "../../terraform-modules/aci/filters"
#   for_each      = var.rul_filters
#   target_tenant = module.tenant[each.value.target_tenant].tenant_id
#   filter_name   = each.key
#   description   = each.value.description
#   entries       = each.value.entries
#   depends_on    = [module.tenant]
# }
#Contracts,Subjects and their Filters
# module "rul_contracts" {
#   source = "../../terraform-modules/aci/contracts"
#   for_each = var.rul_contracts
#   target_tenant = each.value.target_tenant
#   contract_name = each.key
#   contract_description = each.value.contract_description
#   contract_scope = each.value.contract_scope
#   contract_subjects = each.value.contract_subjects
#   depends_on = [ module.tenant,module.rul_filters ]
# }
#Contracts
module "rul_contracts" {
  source = "../../terraform-modules/aci/contracts/standard"
  for_each = {
    for v in var.rul_contracts : "${v.contract_name}" => v
  }
  target_tenant        = module.tenant[each.value.target_tenant].tenant_id
  contract_name        = each.value.contract_name
  contract_description = each.value.contract_description
  contract_scope       = each.value.contract_scope
  filter               = each.value.filter
}
#Contracts-Subjects&Filters(bidirectional)
module "rul_subjects_filters" {
  source                       = "../../terraform-modules/aci/contracts/contract-subjects-filters"
  for_each                     = var.rul_subjects_filters
  contract_dn                  = module.rul_contracts[each.value.contract_name].contract_id
  contract_subj_name           = each.key
  apply_both_directions_enable = each.value.apply_both_directions_enable
  subject_filter               = each.value.subject_filter
  depends_on                   = [module.rul_contracts]
}
#EPG to Contract
module "epg_to_contract" {
  source          = "../../terraform-modules/aci/epg-to-contract"
  for_each        = var.epg_to_contract
  target_epg      = module.epg_bd_subnet[each.value.epg_name].epg_id
  target_contract = module.rul_contracts[each.value.contract_name].contract_id
  contract_type   = each.value.contract_type
  annotation      = each.value.annotation
  match_t         = each.value.match_t
  prio            = each.value.prio
  depends_on      = [module.epg_bd_subnet, module.rul_contracts]
}

#CUSTOM TIME
resource "aci_rest_managed" "dateTime" {
  class_name = "datetimeFormat"
  dn         = "uni/fabric/format-default"
  content = {
    "displayFormat" : "local",
    "showOffset" : "enabled",
    "tz" : "n420_America-Phoenix",
    "userdom" : "all"
  }
}

##############################################################
module "tenant" {
  source      = "../../terraform-modules/aci/tenant"
  for_each    = var.tenant
  name        = each.value.name
  description = each.value.description
  annotation  = ""

}

module "application_profile" {
  source        = "../../terraform-modules/aci/application-profile"
  for_each      = var.application_profile
  target_tenant = module.tenant[each.value.target_tenant].tenant_id
  name          = each.value.anp
  depends_on    = [module.tenant]
}

module "vrf" {
  source        = "../../terraform-modules/aci/vrf"
  for_each      = var.vrf
  target_tenant = module.tenant[each.value.target_tenant].tenant_id
  name          = each.key
  description   = each.value.description
  name_alias    = each.value.name_alias
  depends_on    = [module.tenant]
}

#L2 Extended Bridge Domian Configuration
# module "epg_bd" {
#   source = "../../terraform-modules/aci/epg-bd"
#   for_each = {
#     for v in var.epg_bd : "${v.vlan_id}" => v
#   }
#   tenant_dn                 = module.tenant[each.value.target_tenant].tenant_id
#   vrf_dn                    = module.vrf[each.value.target_vrf].vrf_id
#   vlan_id                   = each.value.vlan_id
#   description               = each.value.description
#   unicast_route             = "no"
#   arp_flood                 = "no"
#   ip_learning               = "yes"
#   limit_ip_learn_to_subnets = "yes"
#   mac                       = "00:22:BD:F8:19:FF"
#   mcast_allow               = "yes"
#   multi_dst_pkt_act         = "bd-flood"
#   bridge_domain_type        = "regular"

#   anp_dn       = module.application_profile[each.value.target_anp].anp_id
#   pc_enf_pref  = "enforced"
#   pref_gr_memb = "exclude"
#   shutdown     = "no"

#   depends_on = [module.application_profile, module.tenant, module.vrf]
# }
