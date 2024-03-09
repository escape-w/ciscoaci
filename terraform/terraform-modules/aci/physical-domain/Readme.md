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
| [aci_physical_domain.physical_domain](https://registry.terraform.io/providers/ciscodevnet/aci/2.11.1/docs/resources/physical_domain) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_physical_domain"></a> [physical\_domain](#input\_physical\_domain) | Name of Physical domain | `string` | n/a | yes |
| <a name="input_relation_infra_rs_vlan_ns"></a> [relation\_infra\_rs\_vlan\_ns](#input\_relation\_infra\_rs\_vlan\_ns) | n/a | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_physical_domain_id"></a> [physical\_domain\_id](#output\_physical\_domain\_id) | n/a |
