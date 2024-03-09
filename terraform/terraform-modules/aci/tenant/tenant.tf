resource "aci_tenant" "tenant" {
  name        = var.name
  description = var.description
  #annotation = var.annotation
  annotation = join(",", var.annotation)
}

