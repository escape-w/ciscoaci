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
| [aci_application_profile.application_profile](https://registry.terraform.io/providers/ciscodevnet/aci/latest/docs/resources/application_profile) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | Name ACI application profile | `string` | n/a | yes |
| <a name="input_target_tenant"></a> [target\_tenant](#input\_target\_tenant) | ACI parent tenant | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_application_profile_id"></a> [application\_profile\_id](#output\_application\_profile\_id) | n/a |
