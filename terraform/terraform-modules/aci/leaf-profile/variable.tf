variable "leaf_profile" {
  description = "Leaf profile configuration"
  type = object({
    name        = string
    description = string
    name_alias  = string
    leaf_selector = list(object({
      name                    = string
      switch_association_type = string
      node_block = list(object({
        name          = string
        from_port_num = string
        to_port_num   = string
      }))
    }))
  })
}
