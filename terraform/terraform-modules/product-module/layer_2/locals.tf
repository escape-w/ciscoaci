locals {
  data = yamldecode(file("./variables.yaml"))

  physical_domains = local.data["physical_domains"]
  aaaeps           = local.data["aaaeps"]
  vlan_pools       = local.data["vlan_pools"]
  leaf_Profiles    = local.data["leaf_Profiles"]
}
