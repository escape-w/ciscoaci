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
| [aci_epg_to_domain.epg_to_domain](https://registry.terraform.io/providers/ciscodevnet/aci/2.11.1/docs/resources/epg_to_domain) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_application_epg_dn"></a> [application\_epg\_dn](#input\_application\_epg\_dn) | n/a | `string` | n/a | yes |
| <a name="input_binding_type"></a> [binding\_type](#input\_binding\_type) | n/a | `string` | n/a | yes |
| <a name="input_encap_mode"></a> [encap\_mode](#input\_encap\_mode) | n/a | `string` | n/a | yes |
| <a name="input_epg_cos"></a> [epg\_cos](#input\_epg\_cos) | n/a | `string` | n/a | yes |
| <a name="input_epg_cos_pref"></a> [epg\_cos\_pref](#input\_epg\_cos\_pref) | n/a | `string` | n/a | yes |
| <a name="input_instr_imedcy"></a> [instr\_imedcy](#input\_instr\_imedcy) | n/a | `string` | n/a | yes |
| <a name="input_switching_mode"></a> [switching\_mode](#input\_switching\_mode) | n/a | `string` | n/a | yes |
| <a name="input_target_domain"></a> [target\_domain](#input\_target\_domain) | n/a | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->