variable "target_contract" {
  type = string
}
variable "target_tenant" {
  type = string
}
variable "contract_subj_name" {
  type = string
}
variable "apply_both_directions_enable" {
  type = string
}
variable "subject_filter" {
  type = list(object({
    target_filter = string
    action        = string
  }))
}