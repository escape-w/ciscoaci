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
| [aci_lacp_policy.lacp](https://registry.terraform.io/providers/ciscodevnet/aci/2.11.1/docs/resources/lacp_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ctrl"></a> [ctrl](#input\_ctrl) | n/a | `list(string)` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | n/a | `string` | n/a | yes |
| <a name="input_max_links"></a> [max\_links](#input\_max\_links) | n/a | `string` | n/a | yes |
| <a name="input_min_links"></a> [min\_links](#input\_min\_links) | n/a | `string` | n/a | yes |
| <a name="input_mode"></a> [mode](#input\_mode) | n/a | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_lacp_id"></a> [lacp\_id](#output\_lacp\_id) | n/a |
