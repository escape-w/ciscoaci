output "tenant_application_profiles" {
  value = { for key, application_profiles in module.application_profiles : key => application_profiles }
}

output "tenant_vrfs" {
  value = { for key, vrfs in module.vrfs : key => vrfs }
}

output "tenant_bds" {
  value = { for key, bds in module.bridge_domain : key => bds }
}

output "Out_tenant" {
  value = { for key, tenants in module.tenants : key => tenants }
}

output "tenant_epg" {
  value = { for key, epgs in module.aci_application_epgs : key => epgs }
}
