variable "name" {
  type        = string
  description = "Name of leaf access bundle policiy group"
}
variable "lag_t" {
  type        = string
  description = "The bundled ports group link aggregation type: port channel vs virtual port channel"
}
variable "description" {
  type = string
}
variable "relation_infra_rs_att_ent_p" {
  type        = string
  description = " Relation to class infraAttEntityP"
}
variable "relation_infra_rs_cdp_if_pol" {
  type        = string
  description = "Relation to class cdpIfPol"
}
variable "relation_infra_rs_h_if_pol" {
  type        = string
  description = " Relation to class fabricHIfPol"
}
variable "relation_infra_rs_lldp_if_pol" {
  type        = string
  description = " Relation to class lldpIfPol"
}
variable "relation_infra_rs_lacp_pol" {
  type        = string
  description = "Relation to class lacpLagPol"
  default     = null
}