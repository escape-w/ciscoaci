variable "application_epg_dn" {
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
