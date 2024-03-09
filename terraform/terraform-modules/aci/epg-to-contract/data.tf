data "aci_tenant" "epg_contract" {
  name = var.target_tenant
}
data "aci_application_profile" "epg_contract" {
  tenant_dn = data.aci_tenant.epg_contract.id
  name      = var.target_application_profile
}
data "aci_application_epg" "epg_contract" {
  name                   = var.target_epg
  application_profile_dn = data.aci_application_profile.epg_contract.id
}

data "aci_contract" "epg_contract" {
  name      = var.target_contract
  tenant_dn = data.aci_tenant.epg_contract.id
}