resource "aci_subnet" "vlan" {
  parent_dn   = var.parent_dn
  ip          = var.ip
  description = var.description
  scope       = var.scope
  ctrl        = var.ctrl
  preferred   = var.preferred
  virtual     = var.virtual
}


