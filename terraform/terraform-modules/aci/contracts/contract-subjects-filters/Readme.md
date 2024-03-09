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
| [aci_contract_subject.subject](https://registry.terraform.io/providers/ciscodevnet/aci/2.11.1/docs/resources/contract_subject) | resource |
| [aci_contract_subject_filter.subject_filter](https://registry.terraform.io/providers/ciscodevnet/aci/2.11.1/docs/resources/contract_subject_filter) | resource |
| [aci_contract.data_subject](https://registry.terraform.io/providers/ciscodevnet/aci/2.11.1/docs/data-sources/contract) | data source |
| [aci_filter.data_subject_filter](https://registry.terraform.io/providers/ciscodevnet/aci/2.11.1/docs/data-sources/filter) | data source |
| [aci_tenant.data_subject](https://registry.terraform.io/providers/ciscodevnet/aci/2.11.1/docs/data-sources/tenant) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_apply_both_directions_enable"></a> [apply\_both\_directions\_enable](#input\_apply\_both\_directions\_enable) | n/a | `string` | n/a | yes |
| <a name="input_contract_subj_name"></a> [contract\_subj\_name](#input\_contract\_subj\_name) | n/a | `string` | n/a | yes |
| <a name="input_subject_filter"></a> [subject\_filter](#input\_subject\_filter) | n/a | <pre>list(object({<br>    target_filter = string<br>    action        = string<br>  }))</pre> | n/a | yes |
| <a name="input_target_contract"></a> [target\_contract](#input\_target\_contract) | n/a | `string` | n/a | yes |
| <a name="input_target_tenant"></a> [target\_tenant](#input\_target\_tenant) | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_contract_subject_id"></a> [contract\_subject\_id](#output\_contract\_subject\_id) | n/a |
