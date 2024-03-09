data "aci_tenant" "data_application_profile" {
  for_each = {
    for profile in local.application_profiles : "${profile.application_profiles_tenant}-${profile.application_profile}" => profile
  }
  name       = each.value.application_profiles_tenant
  depends_on = [module.tenants]
}

data "aci_tenant" "data_vrf" {
  for_each = {
    for vrf in local.vrfs : "${vrf.vrfs_tenant}-${vrf.vrf}" => vrf
  }
  name       = each.value.vrfs_tenant
  depends_on = [module.tenants]
}

data "aci_tenant" "data_bd_epg_subnet" {
  for_each = {
    for set in local.sets : set.set => set
  }
  name       = each.value.bds_tenant
  depends_on = [module.tenants]
}

data "aci_vrf" "data_bd_epg_subnet" {
  for_each = {
    for set in local.sets : set.set => set
  }
  tenant_dn  = data.aci_tenant.data_bd_epg_subnet[each.key].id
  name       = each.value.relation_fv_rs_ctx
  depends_on = [module.tenants, module.vrfs]
}

data "aci_application_profile" "data_bd_epg_subnet" {
  for_each = {
    for set in local.sets : set.set => set
  }

  tenant_dn  = data.aci_tenant.data_bd_epg_subnet[each.key].id
  name       = each.value.epg_application_profile
  depends_on = [module.tenants, module.application_profiles]
}

data "aci_bridge_domain" "data_bd_epg_subnet" {
  for_each = {
    for set in local.sets : set.set => set
  }
  tenant_dn  = data.aci_tenant.data_bd_epg_subnet[each.key].id
  name       = each.value.target_bd
  depends_on = [module.tenants, module.application_profiles, module.bridge_domain]

}
