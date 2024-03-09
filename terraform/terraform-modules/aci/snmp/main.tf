resource "aci_snmp_user" "snmp" {
  snmp_policy_dn     = var.snmp.snmp_policy_dn
  name               = var.snmp.name
  authorization_key  = var.snmp.authorization_key
  authorization_type = var.snmp.authorization_type
  privacy_key        = var.snmp.privacy_key
  privacy_type       = var.snmp.privacy_type
}