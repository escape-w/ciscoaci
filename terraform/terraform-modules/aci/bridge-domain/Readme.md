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
| [aci_bridge_domain.vlan](https://registry.terraform.io/providers/ciscodevnet/aci/latest/docs/resources/bridge_domain) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_arp_flood"></a> [arp\_flood](#input\_arp\_flood) | n/a | `string` | n/a | yes |
| <a name="input_bridge_domain_name"></a> [bridge\_domain\_name](#input\_bridge\_domain\_name) | n/a | `string` | n/a | yes |
| <a name="input_bridge_domain_type"></a> [bridge\_domain\_type](#input\_bridge\_domain\_type) | n/a | `string` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | n/a | `string` | n/a | yes |
| <a name="input_ip_learning"></a> [ip\_learning](#input\_ip\_learning) | n/a | `string` | n/a | yes |
| <a name="input_limit_ip_learn_to_subnets"></a> [limit\_ip\_learn\_to\_subnets](#input\_limit\_ip\_learn\_to\_subnets) | n/a | `string` | n/a | yes |
| <a name="input_mac"></a> [mac](#input\_mac) | n/a | `string` | n/a | yes |
| <a name="input_mcast_allow"></a> [mcast\_allow](#input\_mcast\_allow) | n/a | `string` | n/a | yes |
| <a name="input_multi_dst_pkt_act"></a> [multi\_dst\_pkt\_act](#input\_multi\_dst\_pkt\_act) | n/a | `string` | n/a | yes |
| <a name="input_target_tenant"></a> [target\_tenant](#input\_target\_tenant) | ACI Tenant DN | `string` | n/a | yes |
| <a name="input_target_vrf"></a> [target\_vrf](#input\_target\_vrf) | ACI VRF DN | `string` | n/a | yes |
| <a name="input_unicast_route"></a> [unicast\_route](#input\_unicast\_route) | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_bd_id"></a> [bd\_id](#output\_bd\_id) | n/a |
