resource "aci_lacp_policy" "lacp" {
  description = var.description
  name        = var.name
  ctrl        = var.ctrl
  max_links   = var.max_links
  min_links   = var.min_links
  mode        = var.mode
}



