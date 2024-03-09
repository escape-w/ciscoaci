<!-- BEGIN_TF_DOCS -->
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
| [aci_fabric_if_pol.llp](https://registry.terraform.io/providers/ciscodevnet/aci/2.11.1/docs/resources/fabric_if_pol) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_auto_neg"></a> [auto\_neg](#input\_auto\_neg) | n/a | `string` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | n/a | `string` | n/a | yes |
| <a name="input_fec_mode"></a> [fec\_mode](#input\_fec\_mode) | n/a | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | n/a | `string` | n/a | yes |
| <a name="input_speed"></a> [speed](#input\_speed) | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_llp_id"></a> [llp\_id](#output\_llp\_id) | n/a |
<!-- END_TF_DOCS -->