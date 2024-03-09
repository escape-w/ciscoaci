resource "aci_contract_subject" "subject" {
  contract_dn           = data.aci_contract.id
  name                  = var.contract_subj_name
  apply_both_directions = var.apply_both_directions_enable
}
resource "aci_contract_subject_filter" "subject_filter" {
  for_each = {
    for filter in var.subject_filter : filter.target_filter => filter
  }
  contract_subject_dn = aci_contract_subject.subject.id
  filter_dn           = data.aci_filter.data_subject_filter.id
  action              = each.value.action
}

