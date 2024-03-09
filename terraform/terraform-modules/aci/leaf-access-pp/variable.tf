variable "name" {
  type        = string
  description = "Name of the Leaf access port policiy group"
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