## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2, < 2.0 |
| <a name="requirement_aci"></a> [aci](#requirement\_aci) | 2.11.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aci"></a> [aci](#provider\_aci) | 2.11.1 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_aci_application_epgs"></a> [aci\_application\_epgs](#module\_aci\_application\_epgs) | ../../aci/epg | n/a |
| <a name="module_aci_subnet"></a> [aci\_subnet](#module\_aci\_subnet) | ../../aci/subnet | n/a |
| <a name="module_application_profiles"></a> [application\_profiles](#module\_application\_profiles) | ../../aci/application-profile | n/a |
| <a name="module_bridge_domain"></a> [bridge\_domain](#module\_bridge\_domain) | ../../aci/bridge-domain | n/a |
| <a name="module_tenants"></a> [tenants](#module\_tenants) | ../../aci/tenant | n/a |
| <a name="module_vrfs"></a> [vrfs](#module\_vrfs) | ../../aci/vrf | n/a |

## Resources

| Name | Type |
|------|------|
| [aci_application_profile.data_bd_epg_subnet](https://registry.terraform.io/providers/ciscodevnet/aci/2.11.1/docs/data-sources/application_profile) | data source |
| [aci_bridge_domain.data_bd_epg_subnet](https://registry.terraform.io/providers/ciscodevnet/aci/2.11.1/docs/data-sources/bridge_domain) | data source |
| [aci_tenant.data_application_profile](https://registry.terraform.io/providers/ciscodevnet/aci/2.11.1/docs/data-sources/tenant) | data source |
| [aci_tenant.data_bd_epg_subnet](https://registry.terraform.io/providers/ciscodevnet/aci/2.11.1/docs/data-sources/tenant) | data source |
| [aci_tenant.data_vrf](https://registry.terraform.io/providers/ciscodevnet/aci/2.11.1/docs/data-sources/tenant) | data source |
| [aci_vrf.data_bd_epg_subnet](https://registry.terraform.io/providers/ciscodevnet/aci/2.11.1/docs/data-sources/vrf) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_file"></a> [file](#input\_file) | give file name containing values | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_Out_tenant"></a> [Out\_tenant](#output\_Out\_tenant) | n/a |
| <a name="output_tenant_application_profiles"></a> [tenant\_application\_profiles](#output\_tenant\_application\_profiles) | n/a |
| <a name="output_tenant_bds"></a> [tenant\_bds](#output\_tenant\_bds) | n/a |
| <a name="output_tenant_epg"></a> [tenant\_epg](#output\_tenant\_epg) | n/a |
| <a name="output_tenant_vrfs"></a> [tenant\_vrfs](#output\_tenant\_vrfs) | n/a |
