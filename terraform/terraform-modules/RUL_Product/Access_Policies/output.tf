output "physical_domain" {
  value = { for key, value in module.physical_domain : key => value }
}

output "aaaep" {
  value = { for key, value in module.aaaep : key => value }
  #value = { for key, value in module.aaaep : key => value.name}
}

output "vlan_pool" {
  #value = module.vlan_pool
  value = { for key, value in module.vlan_pool : key => value }
}

output "leaf_Profile" {
  #value = module.leaf_Profile
  value = { for key, value in module.leaf_Profile : key => value }
}
