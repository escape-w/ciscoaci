module "cdp" {

  source = "../../aci/cdp-interface-policy"

  for_each = { for cdp in local.cdps : cdp.name => cdp }

  name        = each.value.name
  admin_st    = each.value.admin_st
  description = each.value.description
}

module "lldp" {

  source = "../../aci/lldp-interface-policy"

  for_each = { for lldp in local.lldps : lldp.name => lldp }

  name        = each.value.name
  description = each.value.description
  admin_rx_st = each.value.admin_rx_st
  admin_tx_st = each.value.admin_tx_st
}

module "llp" {

  source = "../../aci/fabric-if-pol"

  for_each = { for llp in local.llps : llp.name => llp }

  name        = each.value.name
  description = each.value.description
  auto_neg    = each.value.auto_neg
  fec_mode    = each.value.fec_mode
  speed       = each.value.speed

}

module "lacp" {

  source = "../../aci/lacp-policy"

  for_each = { for lacp in local.lacps : lacp.name => lacp }

  name        = each.value.name
  description = each.value.description
  ctrl        = each.value.ctrl
  max_links   = each.value.max_links
  min_links   = each.value.min_links
  mode        = each.value.mode
}