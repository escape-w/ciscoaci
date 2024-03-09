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
| [aci_subnet.vlan](https://registry.terraform.io/providers/ciscodevnet/aci/latest/docs/resources/subnet) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ctrl"></a> [ctrl](#input\_ctrl) | n/a | `list(string)` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | n/a | `string` | n/a | yes |
| <a name="input_ip"></a> [ip](#input\_ip) | Subnets IP Address | `string` | n/a | yes |
| <a name="input_parent_dn"></a> [parent\_dn](#input\_parent\_dn) | n/a | `string` | n/a | yes |
| <a name="input_preferred"></a> [preferred](#input\_preferred) | n/a | `string` | n/a | yes |
| <a name="input_scope"></a> [scope](#input\_scope) | List of network visibility of the subnet | `list(string)` | n/a | yes |
| <a name="input_virtual"></a> [virtual](#input\_virtual) | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_subnet_id"></a> [subnet\_id](#output\_subnet\_id) | n/a |
