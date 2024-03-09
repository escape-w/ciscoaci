variable "leaf_interprof" {
  type = object({
    name        = string
    description = string
  })
}
variable "access_ps" {
  type = object({
    name                           = string
    description                    = string
    access_port_selector_type      = string
    relation_infra_rs_acc_base_grp = string
  })
}
variable "access_pb" {
  type = object({
    name        = string
    description = string
    from_card   = string
    from_port   = string
    to_card     = string
    to_port     = string
  })
}
