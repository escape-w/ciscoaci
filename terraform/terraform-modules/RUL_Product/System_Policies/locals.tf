locals {
  data = yamldecode(file("./variables.yaml"))

  cdps  = local.data["cdp"]
  lldps = local.data["lldp"]
  llps  = local.data["llp"]
  lacps = local.data["lacp"]
}

