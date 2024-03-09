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
| [aci_epg_to_contract.epg_contract](https://registry.terraform.io/providers/ciscodevnet/aci/2.11.1/docs/resources/epg_to_contract) | resource |
| [aci_application_epg.epg_contract](https://registry.terraform.io/providers/ciscodevnet/aci/2.11.1/docs/data-sources/application_epg) | data source |
| [aci_application_profile.epg_contract](https://registry.terraform.io/providers/ciscodevnet/aci/2.11.1/docs/data-sources/application_profile) | data source |
| [aci_contract.epg_contract](https://registry.terraform.io/providers/ciscodevnet/aci/2.11.1/docs/data-sources/contract) | data source |
| [aci_tenant.epg_contract](https://registry.terraform.io/providers/ciscodevnet/aci/2.11.1/docs/data-sources/tenant) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_annotation"></a> [annotation](#input\_annotation) | n/a | `string` | n/a | yes |
| <a name="input_contract_type"></a> [contract\_type](#input\_contract\_type) | n/a | `string` | n/a | yes |
| <a name="input_match_t"></a> [match\_t](#input\_match\_t) | n/a | `string` | n/a | yes |
| <a name="input_prio"></a> [prio](#input\_prio) | n/a | `string` | n/a | yes |
| <a name="input_target_application_profile"></a> [target\_application\_profile](#input\_target\_application\_profile) | n/a | `string` | n/a | yes |
| <a name="input_target_contract"></a> [target\_contract](#input\_target\_contract) | n/a | `string` | n/a | yes |
| <a name="input_target_epg"></a> [target\_epg](#input\_target\_epg) | n/a | `string` | n/a | yes |
| <a name="input_target_tenant"></a> [target\_tenant](#input\_target\_tenant) | n/a | `string` | n/a | yes |

## Outputs

No outputs.
