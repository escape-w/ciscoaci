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
| [aci_bulk_epg_to_static_path.epg_static_path](https://registry.terraform.io/providers/ciscodevnet/aci/2.11.1/docs/resources/bulk_epg_to_static_path) | resource |
| [aci_application_epg.epg_static_path](https://registry.terraform.io/providers/ciscodevnet/aci/2.11.1/docs/data-sources/application_epg) | data source |
| [aci_application_profile.epg_static_path](https://registry.terraform.io/providers/ciscodevnet/aci/2.11.1/docs/data-sources/application_profile) | data source |
| [aci_tenant.epg_static_path](https://registry.terraform.io/providers/ciscodevnet/aci/2.11.1/docs/data-sources/tenant) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_static_config"></a> [static\_config](#input\_static\_config) | n/a | <pre>list(object({<br/>    interface_dn         = string<br/>    encap                = string<br/>    description          = string<br/>    deployment_immediacy = string<br/>    mode                 = string<br/>    primary_encap        = string<br/>  }))</pre> | n/a | yes |
| <a name="input_target_application_profile"></a> [target\_application\_profile](#input\_target\_application\_profile) | n/a | `string` | n/a | yes |
| <a name="input_target_epg"></a> [target\_epg](#input\_target\_epg) | n/a | `string` | n/a | yes |
| <a name="input_target_tenant"></a> [target\_tenant](#input\_target\_tenant) | n/a | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->