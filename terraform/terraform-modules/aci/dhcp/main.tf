resource "aci_dhcp_relay_policy" "dhcp" {
  tenant_dn   = data.aci_tenant.dhcp.id
  name        = var.name
  annotation  = var.annotation
  description = var.description
  mode        = var.mode
  name_alias  = var.name_alias
  owner       = var.owner
  dynamic "relation_dhcp_rs_prov" {
    for_each = {
      for relation in var.relation_dhcp_rs_prov : relation.epg => relation
    }
    content {
      addr = relation_dhcp_rs_prov.value.addr
      tdn  = data.aci_application_epg.dhcp[each.key].id
    }
  }
}

