locals {
  data = yamldecode(file("./variables.yaml"))

  labps = local.data["leaf_access_bulk_policy"]
  lapps = local.data["leaf_access_port_policy"]
  lips  = local.data["leaf_interface_profile"]
}

