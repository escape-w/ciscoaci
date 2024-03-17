data "aci_leaf_interface_profile" "dev_leaf_int_prof" {
  name = var.leaf_interprof_name
}

data "aci_access_port_selector" "dev_acc_port_select" {
  leaf_interface_profile_dn = data.aci_leaf_interface_profile.dev_leaf_int_prof.id
  name                      = var.access_port_selector_name
  access_port_selector_type = var.access_port_selector_type
}