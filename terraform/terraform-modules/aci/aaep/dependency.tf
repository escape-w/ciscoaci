data "aci_physical_domain" "domains" {
  count = var.physical_domain_names != "" ? length(var.physical_domain_names) : 0
  name  = var.physical_domain_names != "" ? var.physical_domain_names[count.index] : null
}
