resource "aci_epg_to_contract" "epg_contract" {
  application_epg_dn = var.target_epg
  contract_dn        = var.target_contract
  contract_type      = var.contract_type
  annotation         = var.annotation
  match_t            = var.match_t
  prio               = var.prio
}