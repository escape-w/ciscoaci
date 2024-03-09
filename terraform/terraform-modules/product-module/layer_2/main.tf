module "physical_domain" {
  source = "../../aci/physical-domain"

  for_each = { for domain in local.physical_domains : domain.name => domain }

  physical_domain           = each.key
  relation_infra_rs_vlan_ns = each.value["vlan-pool"]
}

module "aaaep" {
  source = "../../aci/aaep"

  for_each = { for aaaep in local.aaaeps : aaaep.name => aaaep }
  name     = each.key
  #name = each.value["name"]
  description           = each.value["description"]
  physical_domain_names = try(split(",", replace(each.value["physical_domain_names"], " ", "")), [])
  depends_on            = [module.physical_domain]

}


module "vlan_pool" {
  source = "../../aci/vlan-pool"

  for_each = { for vlan_pool in local.vlan_pools : vlan_pool.name => vlan_pool }

  name        = each.key
  description = each.value["description"]
  alloc_mode  = each.value["alloc_mode"]
  ranges      = each.value["ranges"]
}

module "leaf_Profile" {
  source = "../../aci/leaf-profile"

  for_each     = { for leaf_Profile in local.leaf_Profiles : leaf_Profile.name => leaf_Profile }
  leaf_profile = each.value
}