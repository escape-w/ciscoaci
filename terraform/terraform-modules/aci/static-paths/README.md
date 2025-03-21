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

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_application_epg_dn"></a> [application\_epg\_dn](#input\_application\_epg\_dn) | n/a | `string` | n/a | yes |
| <a name="input_static_config"></a> [static\_config](#input\_static\_config) | n/a | <pre>list(object({<br/>    interface_dn         = string<br/>    encap                = string<br/>    description          = string<br/>    deployment_immediacy = string<br/>    mode                 = string<br/>    primary_encap        = string<br/>  }))</pre> | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->