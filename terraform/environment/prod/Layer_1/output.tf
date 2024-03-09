output "tenant_application_profiles" {
  value = { for key, value in module.layer_1 : key => value }
}

# output "tenant_vrfs" {
#   value = { for key, vrfs in module.vrfs : key => vrfs.vrf_id }
# }

# output "tenant_bds" {
#   value = { for key, bds in module.bridge_domain : key => bds.bd_id }
# }

# output "Out_tenant" {
#   value = { for key, tenants in module.tenants : key => tenants.tenant_id }
# }

# output "tenant_epg" {
#   value = { for key, epgs in module.aci_application_epgs : key => epgs.epg_id }
# }
