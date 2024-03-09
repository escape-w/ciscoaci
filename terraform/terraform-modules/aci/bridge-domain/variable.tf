variable "target_tenant" {
  description = "ACI Tenant DN"
  type        = string
}

variable "target_vrf" {
  description = "ACI VRF DN"
  type        = string
}

variable "unicast_route" {
  type = string
}
variable "arp_flood" {
  type = string
}
variable "ip_learning" {
  type = string
}
variable "limit_ip_learn_to_subnets" {
  type = string
}
variable "mac" {
  type = string
}
variable "mcast_allow" {
  type = string
}
variable "multi_dst_pkt_act" {
  type = string
}
variable "bridge_domain_type" {
  type = string
}
variable "description" {
  type = string
}

variable "bridge_domain_name" {
  type = string
}
