resource "aci_vlan_pool" "vlpool" {
  name        = var.name
  description = var.description
  alloc_mode  = var.alloc_mode
}

resource "aci_ranges" "ranges" {
  for_each = {
    for range in var.ranges : range.name_alias => range
  }
  vlan_pool_dn = aci_vlan_pool.vlpool.id
  description  = each.value.description
  from         = each.value.from
  to           = each.value.to
  alloc_mode   = each.value.alloc_mode_ranges
  role         = each.value.ranges_role
  name_alias   = each.value.name_alias
}
