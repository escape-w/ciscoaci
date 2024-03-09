

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
| [aci_attachable_access_entity_profile.aaep](https://registry.terraform.io/providers/ciscodevnet/aci/2.11.1/docs/resources/attachable_access_entity_profile) | resource |
| [aci_physical_domain.domains](https://registry.terraform.io/providers/ciscodevnet/aci/2.11.1/docs/data-sources/physical_domain) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | n/a | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | n/a | `string` | n/a | yes |
| <a name="input_physical_domain_names"></a> [physical\_domain\_names](#input\_physical\_domain\_names) | List of physical domain names | `list(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aeep_id"></a> [aeep\_id](#output\_aeep\_id) | n/a |
<!-- END_TF_DOCS -->