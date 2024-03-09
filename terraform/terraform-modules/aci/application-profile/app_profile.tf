resource "aci_application_profile" "application_profile" {
  tenant_dn = var.target_tenant
  name      = var.name
}