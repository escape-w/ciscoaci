variable "target_tenant" {
  type = string
}
variable "target_application_profile" {
  type = string
}
variable "target_epg" {
  type = string
}
variable "static_config" {
  type = list(object({
    interface_dn         = string
    encap                = string
    description          = string
    deployment_immediacy = string
    mode                 = string
    primary_encap        = string
  }))
}
