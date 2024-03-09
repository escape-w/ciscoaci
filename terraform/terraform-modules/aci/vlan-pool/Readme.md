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
| [aci_ranges.ranges](https://registry.terraform.io/providers/ciscodevnet/aci/2.11.1/docs/resources/ranges) | resource |
| [aci_vlan_pool.vlpool](https://registry.terraform.io/providers/ciscodevnet/aci/2.11.1/docs/resources/vlan_pool) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_alloc_mode"></a> [alloc\_mode](#input\_alloc\_mode) | Alloc\_mode VLanPool | `any` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | Description of VLanPool | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name of VLanPool | `string` | n/a | yes |
| <a name="input_ranges"></a> [ranges](#input\_ranges) | vlpol ranges | <pre>list(object({<br>    name_alias        = string<br>    description       = string<br>    from              = string<br>    to                = string<br>    alloc_mode_ranges = string<br>    ranges_role       = string<br>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vlpool_id"></a> [vlpool\_id](#output\_vlpool\_id) | n/a |
