resource "aci_physical_domain" "physical_domain" {
  name                      = var.physical_domain
  relation_infra_rs_vlan_ns = var.relation_infra_rs_vlan_ns
}

