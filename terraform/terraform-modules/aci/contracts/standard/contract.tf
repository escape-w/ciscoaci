resource "aci_contract" "contract" {
  tenant_dn   = data.aci_tenant.data_contract.target_tenant
  name        = var.contract_name
  description = var.contract_description
  scope       = var.contract_scope

  dynamic "filter" {
    for_each = { for fil in var.filter : fil.filter_name => fil }
    content {
      filter_name = filter.value.filter_name
      description = filter.value.description

      dynamic "filter_entry" {
        for_each = { for fil in filter.value.filter_entry : fil.filter_entry_name => fil }
        content {
          description       = filter_entry.value.description
          filter_entry_name = filter_entry.value.filter_entry_name
          apply_to_frag     = filter_entry.value.apply_to_frag
          arp_opc           = filter_entry.value.arp_opc
          d_from_port       = filter_entry.value.d_from_port
          d_to_port         = filter_entry.value.d_to_port
          ether_t           = filter_entry.value.ether_t
          icmpv4_t          = filter_entry.value.icmpv4_t
          icmpv6_t          = filter_entry.value.icmpv6_t
          s_from_port       = filter_entry.value.s_from_port
          s_to_port         = filter_entry.value.s_to_port
        }
      }
    }
  }
}
