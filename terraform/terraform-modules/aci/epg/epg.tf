resource "aci_application_epg" "vlan" {
  application_profile_dn = var.target_application_profile
  name                   = var.name
  relation_fv_rs_bd      = var.target_bd
  description            = var.description
  pc_enf_pref            = var.pc_enf_pref
  pref_gr_memb           = var.pref_gr_memb
  shutdown               = var.shutdown
}

