variable "target_tenant" {
  type = string
}
variable "contract_name" {
  type = string
}
variable "contract_description" {
  type = string
}
variable "contract_scope" {
  type = string
}
variable "filter" {
  type = list(object({
    filter_name = string
    description = string
    filter_entry = list(object({
      description       = string
      filter_entry_name = string
      apply_to_frag     = string
      arp_opc           = string
      d_from_port       = string
      d_to_port         = string
      ether_t           = string
      icmpv4_t          = string
      icmpv6_t          = string
      s_from_port       = string
      s_to_port         = string
    }))
  }))
}

