resource "aci_vrf" "vrf" {
  tenant_dn   = var.target_tenant
  name        = var.name
  description = var.description
  name_alias  = var.name_alias
}
