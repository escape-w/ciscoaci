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
| [aci_leaf_access_bundle_policy_group.leaf_bpg](https://registry.terraform.io/providers/ciscodevnet/aci/2.11.1/docs/resources/leaf_access_bundle_policy_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | n/a | `string` | n/a | yes |
| <a name="input_lag_t"></a> [lag\_t](#input\_lag\_t) | The bundled ports group link aggregation type: port channel vs virtual port channel | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name of leaf access bundle policiy group | `string` | n/a | yes |
| <a name="input_relation_infra_rs_att_ent_p"></a> [relation\_infra\_rs\_att\_ent\_p](#input\_relation\_infra\_rs\_att\_ent\_p) | Relation to class infraAttEntityP | `string` | n/a | yes |
| <a name="input_relation_infra_rs_cdp_if_pol"></a> [relation\_infra\_rs\_cdp\_if\_pol](#input\_relation\_infra\_rs\_cdp\_if\_pol) | Relation to class cdpIfPol | `string` | n/a | yes |
| <a name="input_relation_infra_rs_h_if_pol"></a> [relation\_infra\_rs\_h\_if\_pol](#input\_relation\_infra\_rs\_h\_if\_pol) | Relation to class fabricHIfPol | `string` | n/a | yes |
| <a name="input_relation_infra_rs_lacp_pol"></a> [relation\_infra\_rs\_lacp\_pol](#input\_relation\_infra\_rs\_lacp\_pol) | Relation to class lacpLagPol | `string` | `null` | no |
| <a name="input_relation_infra_rs_lldp_if_pol"></a> [relation\_infra\_rs\_lldp\_if\_pol](#input\_relation\_infra\_rs\_lldp\_if\_pol) | Relation to class lldpIfPol | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_leaf_access_bulk_policy_id"></a> [leaf\_access\_bulk\_policy\_id](#output\_leaf\_access\_bulk\_policy\_id) | n/a |
