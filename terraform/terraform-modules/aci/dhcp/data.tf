data "aci_tenant" "dhcp" {
  name = var.target_tenant
}

data "aci_application_profile" "dhcp" {
  for_each = {
    for relation in var.relation_dhcp_rs_prov : relation.epg => relation
  }
  tenant_dn = data.aci_tenant.dhcp.id
  name      = each.value.target_application_profile
}

data "aci_application_epg" "dhcp" {
  for_each = {
    for relation in var.relation_dhcp_rs_prov : relation.epg => relation
  }
  application_profile_dn = data.aci_application_profile.dhcp.id
  name                   = each.value.target_epg
}