resource "aci_leaf_profile" "leaf_profile" {
  name        = var.leaf_profile.name
  description = var.leaf_profile.description
  name_alias  = var.leaf_profile.name_alias

  dynamic "leaf_selector" {
    for_each = { for ls in var.leaf_profile.leaf_selector : ls.name => ls }
    content {
      name                    = leaf_selector.value.name
      switch_association_type = leaf_selector.value.switch_association_type

      dynamic "node_block" {
        for_each = { for nb in leaf_selector.value.node_block : nb.name => nb }
        content {
          name  = node_block.value.name
          from_ = node_block.value.from_port_num
          to_   = node_block.value.to_port_num
        }
      }
    }
  }
}
