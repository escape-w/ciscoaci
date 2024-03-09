data "aci_tenant" "data_subject" {
  name = var.target_tenant
}
data "aci_contract" "data_subject" {
  tenant_dn = data.aci_tenant.data_subject.id
  name      = var.target_contract
}
data "aci_filter" "data_subject_filter" {
  for_each = {
    for filter in var.subject_filter : filter.target_filter => filter
  }
  tenant_dn = data.aci_tenant.data_subject.id
  name      = each.value.target_filter
}