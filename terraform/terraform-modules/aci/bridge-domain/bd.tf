resource "aci_bridge_domain" "vlan" {
  tenant_dn                 = var.target_tenant
  name                      = var.bridge_domain_name
  relation_fv_rs_ctx        = var.target_vrf
  description               = var.description
  unicast_route             = var.unicast_route
  arp_flood                 = var.arp_flood
  ip_learning               = var.ip_learning
  limit_ip_learn_to_subnets = var.limit_ip_learn_to_subnets
  mac                       = var.mac
  mcast_allow               = var.mcast_allow
  multi_dst_pkt_act         = var.multi_dst_pkt_act
  bridge_domain_type        = var.bridge_domain_type
}


