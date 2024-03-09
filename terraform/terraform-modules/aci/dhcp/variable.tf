variable "name" {
  type = string
}
variable "target_tenant" {
  type = string
}
variable "mode" {
  type = string
}
variable "annotation" {
  type = string
}
variable "owner" {
  type = string
}
variable "description" {
  type = string
}
variable "name_alias" {
  type = string
}
variable "relation_dhcp_rs_prov" {
  type = list(object({
    addr                       = string
    target_application_profile = string
    target_epg                 = string
  }))
}
