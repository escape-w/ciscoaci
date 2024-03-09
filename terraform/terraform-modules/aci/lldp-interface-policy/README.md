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
| [aci_lldp_interface_policy.lldp](https://registry.terraform.io/providers/ciscodevnet/aci/2.11.1/docs/resources/lldp_interface_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_admin_rx_st"></a> [admin\_rx\_st](#input\_admin\_rx\_st) | n/a | `string` | n/a | yes |
| <a name="input_admin_tx_st"></a> [admin\_tx\_st](#input\_admin\_tx\_st) | n/a | `string` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | n/a | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_lldp_id"></a> [lldp\_id](#output\_lldp\_id) | n/a |
<!-- END_TF_DOCS -->