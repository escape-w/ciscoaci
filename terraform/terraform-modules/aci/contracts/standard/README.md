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
| [aci_contract.contract](https://registry.terraform.io/providers/ciscodevnet/aci/2.11.1/docs/resources/contract) | resource |
| [aci_tenant.data_contract](https://registry.terraform.io/providers/ciscodevnet/aci/2.11.1/docs/data-sources/tenant) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_contract_description"></a> [contract\_description](#input\_contract\_description) | n/a | `string` | n/a | yes |
| <a name="input_contract_name"></a> [contract\_name](#input\_contract\_name) | n/a | `string` | n/a | yes |
| <a name="input_contract_scope"></a> [contract\_scope](#input\_contract\_scope) | n/a | `string` | n/a | yes |
| <a name="input_filter"></a> [filter](#input\_filter) | n/a | <pre>list(object({<br/>    filter_name = string<br/>    description = string<br/>    filter_entry = list(object({<br/>      description       = string<br/>      filter_entry_name = string<br/>      apply_to_frag     = string<br/>      arp_opc           = string<br/>      d_from_port       = string<br/>      d_to_port         = string<br/>      ether_t           = string<br/>      icmpv4_t          = string<br/>      icmpv6_t          = string<br/>      s_from_port       = string<br/>      s_to_port         = string<br/>    }))<br/>  }))</pre> | n/a | yes |
| <a name="input_target_tenant"></a> [target\_tenant](#input\_target\_tenant) | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_contract_id"></a> [contract\_id](#output\_contract\_id) | n/a |
<!-- END_TF_DOCS -->