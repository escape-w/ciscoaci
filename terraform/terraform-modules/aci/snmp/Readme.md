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
| [aci_snmp_user.snmp](https://registry.terraform.io/providers/ciscodevnet/aci/2.11.1/docs/resources/snmp_user) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_snmp"></a> [snmp](#input\_snmp) | n/a | <pre>object({<br>    snmp_policy_dn     = string<br>    name               = string<br>    authorization_key  = string<br>    authorization_type = string<br>    privacy_key        = string<br>    privacy_type       = string<br>  })</pre> | n/a | yes |

## Outputs

No outputs.
