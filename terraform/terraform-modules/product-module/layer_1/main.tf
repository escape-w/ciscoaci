module "tenants" {
  source = "../../aci/tenant"

  for_each = {
    for tenant in local.tenants : tenant.tenant => {
      description = try(tenant.description, "")
      annotation  = try(tenant.annotation, ["By:Terraform"])
    }
  }

  name        = each.key
  description = each.value.description
  annotation  = each.value.annotation
}


module "application_profiles" {
  source = "../../aci/application-profile"

  for_each = {
    for profile in local.application_profiles : "${profile.application_profiles_tenant}-${profile.application_profile}" => profile
  }
  target_tenant = data.aci_tenant.data_application_profile[each.key].id
  name          = each.value.application_profile
}

module "vrfs" {
  source = "../../aci/vrf"

  for_each = {
    for vrf in local.vrfs : "${vrf.vrfs_tenant}-${vrf.vrf}" => vrf
  }
  target_tenant = data.aci_tenant.data_vrf[each.key].id
  name          = each.value.vrf
  name_alias    = each.value.vrf
  description   = each.value.description
}

module "bridge_domain" {
  source = "../../aci/bridge-domain"

  for_each = {
    for set in local.sets : set.set => set
  }
  target_tenant             = data.aci_tenant.data_bd_epg_subnet[each.key].id
  bridge_domain_name        = each.value.bd_name
  target_vrf                = data.aci_vrf.data_bd_epg_subnet[each.key].id
  description               = each.value.description
  unicast_route             = each.value.unicast_route
  arp_flood                 = each.value.arp_flood
  ip_learning               = each.value.ip_learning
  limit_ip_learn_to_subnets = each.value.limit_ip_learn_to_subnets
  mac                       = each.value.mac
  mcast_allow               = each.value.mcast_allow
  multi_dst_pkt_act         = each.value.multi_dst_pkt_act
  bridge_domain_type        = each.value.bridge_domain_type
}

module "aci_application_epgs" {
  source = "../../aci/epg"

  for_each = {
    for set in local.sets : set.set => set
  }
  target_application_profile = data.aci_application_profile.data_bd_epg_subnet[each.key].id
  name                       = each.value.epg_name
  target_bd                  = data.aci_bridge_domain.data_bd_epg_subnet[each.key].id
  description                = each.value.description
  pc_enf_pref                = each.value.pc_enf_pref
  pref_gr_memb               = each.value.pref_gr_memb
  shutdown                   = each.value.shutdown
}

module "aci_subnet" {
  source = "../../aci/subnet"

  for_each = {
    for set in local.sets : set.set => set
  }

  parent_dn   = data.aci_bridge_domain.data_bd_epg_subnet[each.key].id
  ip          = each.value.ip
  description = each.value.description
  scope       = each.value.scope
  ctrl        = each.value.ctrl
  preferred   = each.value.preferred
  virtual     = each.value.virtual
}
