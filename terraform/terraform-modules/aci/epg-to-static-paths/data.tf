data "aci_tenant" "epg_static_path" {
  name = var.target_tenant
}
data "aci_application_profile" "epg_static_path" {
  tenant_dn = data.aci_tenant.epg_static_path.id
  name      = var.target_application_profile
}
data "aci_application_epg" "epg_static_path" {
  name                   = var.target_epg
  application_profile_dn = data.aci_application_profile.epg_static_path.id
}