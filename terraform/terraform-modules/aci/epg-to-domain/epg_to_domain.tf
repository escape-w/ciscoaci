resource "aci_epg_to_domain" "epg_to_domain" {
  application_epg_dn = var.application_epg_dn
  tdn                = var.target_domain
  binding_type       = var.binding_type
  encap_mode         = var.encap_mode
  epg_cos            = var.epg_cos
  epg_cos_pref       = var.epg_cos_pref
  instr_imedcy       = var.instr_imedcy
  switching_mode     = var.switching_mode
}
