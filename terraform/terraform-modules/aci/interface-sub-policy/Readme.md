## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.15 |
| <a name="requirement_aci"></a> [aci](#requirement\_aci) | 2.11.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aci"></a> [aci](#provider\_aci) | 2.11.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aci_cdp_interface_policy.cdp](https://registry.terraform.io/providers/ciscodevnet/aci/2.11.1/docs/resources/cdp_interface_policy) | resource |
| [aci_fabric_if_pol.llp](https://registry.terraform.io/providers/ciscodevnet/aci/2.11.1/docs/resources/fabric_if_pol) | resource |
| [aci_lacp_policy.lacp](https://registry.terraform.io/providers/ciscodevnet/aci/2.11.1/docs/resources/lacp_policy) | resource |
| [aci_lldp_interface_policy.lldp](https://registry.terraform.io/providers/ciscodevnet/aci/2.11.1/docs/resources/lldp_interface_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cdp"></a> [cdp](#input\_cdp) | n/a | <pre>object({<br>    name        = string<br>    admin_st    = string<br>    description = string<br>  })</pre> | n/a | yes |
| <a name="input_lacp"></a> [lacp](#input\_lacp) | n/a | <pre>object({<br>    name        = string<br>    description = string<br>    ctrl        = list(string)<br>    max_links   = string<br>    min_links   = string<br>    mode        = string<br>  })</pre> | n/a | yes |
| <a name="input_lldp"></a> [lldp](#input\_lldp) | n/a | <pre>object({<br>    name        = string<br>    description = string<br>    admin_rx_st = string<br>    admin_tx_st = string<br>  })</pre> | n/a | yes |
| <a name="input_llp"></a> [llp](#input\_llp) | n/a | <pre>object({<br>    name        = string<br>    description = string<br>    auto_neg    = string<br>    fec_mode    = string<br>    speed       = string<br>  })</pre> | n/a | yes |

## Outputs

No outputs.
