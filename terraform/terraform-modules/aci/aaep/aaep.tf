resource "aci_attachable_access_entity_profile" "aaep" {
  name                    = var.name
  description             = var.description
  relation_infra_rs_dom_p = data.aci_physical_domain.domains[*].id
}
