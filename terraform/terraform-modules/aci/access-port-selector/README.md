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
| [aci_access_port_selector.access_ps](https://registry.terraform.io/providers/ciscodevnet/aci/2.11.1/docs/resources/access_port_selector) | resource |
| [aci_leaf_interface_profile.dev_leaf_int_prof](https://registry.terraform.io/providers/ciscodevnet/aci/2.11.1/docs/data-sources/leaf_interface_profile) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_port_selector_type"></a> [access\_port\_selector\_type](#input\_access\_port\_selector\_type) | n/a | `string` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | n/a | `string` | n/a | yes |
| <a name="input_leaf_interprof_name"></a> [leaf\_interprof\_name](#input\_leaf\_interprof\_name) | n/a | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | n/a | `string` | n/a | yes |
| <a name="input_target_bundle_policy_group_name"></a> [target\_bundle\_policy\_group\_name](#input\_target\_bundle\_policy\_group\_name) | n/a | `string` | `""` | no |
| <a name="input_target_port_policy_group_name"></a> [target\_port\_policy\_group\_name](#input\_target\_port\_policy\_group\_name) | n/a | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_access_ps_id"></a> [access\_ps\_id](#output\_access\_ps\_id) | n/a |
<!-- END_TF_DOCS -->