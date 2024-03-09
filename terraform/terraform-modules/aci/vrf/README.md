<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.15 |
| <a name="requirement_aci"></a> [aci](#requirement\_aci) | >= 2.11.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aci"></a> [aci](#provider\_aci) | >= 2.11.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aci_vrf.vrf](https://registry.terraform.io/providers/ciscodevnet/aci/latest/docs/resources/vrf) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | n/a | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | n/a | `string` | n/a | yes |
| <a name="input_name_alias"></a> [name\_alias](#input\_name\_alias) | n/a | `string` | n/a | yes |
| <a name="input_target_tenant"></a> [target\_tenant](#input\_target\_tenant) | Distinguished name of parent Tenant object | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vrf_id"></a> [vrf\_id](#output\_vrf\_id) | n/a |
<!-- END_TF_DOCS -->