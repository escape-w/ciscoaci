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
| [aci_access_port_block.access_pb](https://registry.terraform.io/providers/ciscodevnet/aci/2.11.1/docs/resources/access_port_block) | resource |
| [aci_access_port_selector.dev_acc_port_select](https://registry.terraform.io/providers/ciscodevnet/aci/2.11.1/docs/data-sources/access_port_selector) | data source |
| [aci_leaf_interface_profile.dev_leaf_int_prof](https://registry.terraform.io/providers/ciscodevnet/aci/2.11.1/docs/data-sources/leaf_interface_profile) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_port_selector_name"></a> [access\_port\_selector\_name](#input\_access\_port\_selector\_name) | n/a | `string` | n/a | yes |
| <a name="input_access_port_selector_type"></a> [access\_port\_selector\_type](#input\_access\_port\_selector\_type) | n/a | `string` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | n/a | `string` | n/a | yes |
| <a name="input_from_card"></a> [from\_card](#input\_from\_card) | n/a | `string` | n/a | yes |
| <a name="input_from_port"></a> [from\_port](#input\_from\_port) | n/a | `string` | n/a | yes |
| <a name="input_leaf_interprof_name"></a> [leaf\_interprof\_name](#input\_leaf\_interprof\_name) | n/a | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | n/a | `string` | n/a | yes |
| <a name="input_to_card"></a> [to\_card](#input\_to\_card) | n/a | `string` | n/a | yes |
| <a name="input_to_port"></a> [to\_port](#input\_to\_port) | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_access_pb_id"></a> [access\_pb\_id](#output\_access\_pb\_id) | n/a |
<!-- END_TF_DOCS -->