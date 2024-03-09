resource "aci_vpc_explicit_protection_group" "vpc_pg" {
  name                             = var.vpc_pg.name
  switch1                          = var.vpc_pg.switch1
  switch2                          = var.vpc_pg.switch2
  vpc_domain_policy                = var.vpc_pg.vpc_domain_policy
  vpc_explicit_protection_group_id = var.vpc_pg.vpc_explicit_protection_group_id
}
