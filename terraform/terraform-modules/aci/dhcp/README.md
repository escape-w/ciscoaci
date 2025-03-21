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
| [aci_dhcp_relay_policy.dhcp](https://registry.terraform.io/providers/ciscodevnet/aci/2.11.1/docs/resources/dhcp_relay_policy) | resource |
| [aci_application_epg.dhcp](https://registry.terraform.io/providers/ciscodevnet/aci/2.11.1/docs/data-sources/application_epg) | data source |
| [aci_application_profile.dhcp](https://registry.terraform.io/providers/ciscodevnet/aci/2.11.1/docs/data-sources/application_profile) | data source |
| [aci_tenant.dhcp](https://registry.terraform.io/providers/ciscodevnet/aci/2.11.1/docs/data-sources/tenant) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_annotation"></a> [annotation](#input\_annotation) | n/a | `string` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | n/a | `string` | n/a | yes |
| <a name="input_mode"></a> [mode](#input\_mode) | n/a | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | n/a | `string` | n/a | yes |
| <a name="input_name_alias"></a> [name\_alias](#input\_name\_alias) | n/a | `string` | n/a | yes |
| <a name="input_owner"></a> [owner](#input\_owner) | n/a | `string` | n/a | yes |
| <a name="input_relation_dhcp_rs_prov"></a> [relation\_dhcp\_rs\_prov](#input\_relation\_dhcp\_rs\_prov) | n/a | <pre>list(object({<br/>    addr                       = string<br/>    target_application_profile = string<br/>    target_epg                 = string<br/>  }))</pre> | n/a | yes |
| <a name="input_target_tenant"></a> [target\_tenant](#input\_target\_tenant) | n/a | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->