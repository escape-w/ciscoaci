variable "snmp" {
  type = object({
    snmp_policy_dn     = string
    name               = string
    authorization_key  = string
    authorization_type = string
    privacy_key        = string
    privacy_type       = string
  })
}
