resource "aci_bulk_epg_to_static_path" "epg_static_path" {
  application_epg_dn = var.application_epg_dn
  dynamic "static_path" {
    for_each = { for st_path in var.static_config : st_path.interface_dn => st_path }
    content {
      interface_dn         = static_path.value.interface_dn
      encap                = static_path.value.encap
      description          = static_path.value.description
      deployment_immediacy = static_path.value.deployment_immediacy
      mode                 = static_path.value.mode
      primary_encap        = static_path.value.primary_encap
    }
  }
}
