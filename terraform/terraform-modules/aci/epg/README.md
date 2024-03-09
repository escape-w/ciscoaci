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
| [aci_application_epg.vlan](https://registry.terraform.io/providers/ciscodevnet/aci/latest/docs/resources/application_epg) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | n/a | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | EPG Name | `string` | n/a | yes |
| <a name="input_pc_enf_pref"></a> [pc\_enf\_pref](#input\_pc\_enf\_pref) | n/a | `string` | n/a | yes |
| <a name="input_pref_gr_memb"></a> [pref\_gr\_memb](#input\_pref\_gr\_memb) | n/a | `string` | n/a | yes |
| <a name="input_shutdown"></a> [shutdown](#input\_shutdown) | n/a | `string` | n/a | yes |
| <a name="input_target_application_profile"></a> [target\_application\_profile](#input\_target\_application\_profile) | ACI Application Profile DN | `string` | n/a | yes |
| <a name="input_target_bd"></a> [target\_bd](#input\_target\_bd) | The associated ACI Bridge Domain | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_epg_id"></a> [epg\_id](#output\_epg\_id) | n/a |
<!-- END_TF_DOCS -->