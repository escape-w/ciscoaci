# data "aci_leaf_access_bundle_policy_group" "access_ps" {
#     count = var.target_bundle_policy_group_name != null ? 1 : 0
#     name  = var.target_bundle_policy_group_name
# }

# data "aci_leaf_access_port_policy_group" "access_ps" {
#     count = var.target_port_policy_group_name != null ? 1 : 0
#     name  = var.target_port_policy_group_name
# }

resource "aci_access_port_selector" "access_ps" {
  leaf_interface_profile_dn = data.aci_leaf_interface_profile.dev_leaf_int_prof.id
  description               = var.description
  name                      = var.name
  access_port_selector_type = var.access_port_selector_type
  #relation_infra_rs_acc_base_grp = var.target_port_policy_group_name != "" ? can(data.aci_leaf_access_port_policy_group.access_ps[0]) ? data.aci_leaf_access_port_policy_group.access_ps[0].id : null : can(data.aci_leaf_access_bundle_policy_group.access_ps[0]) ? data.aci_leaf_access_bundle_policy_group.access_ps[0].id : null
}
