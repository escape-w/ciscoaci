resource "aci_fabric_if_pol" "llp" {
  name        = var.name
  description = var.description
  auto_neg    = var.auto_neg
  fec_mode    = var.fec_mode
  speed       = var.speed
}
