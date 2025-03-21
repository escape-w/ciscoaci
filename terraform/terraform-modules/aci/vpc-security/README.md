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
| [aci_vpc_explicit_protection_group.vpc_pg](https://registry.terraform.io/providers/ciscodevnet/aci/2.11.1/docs/resources/vpc_explicit_protection_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_vpc_pg"></a> [vpc\_pg](#input\_vpc\_pg) | n/a | <pre>object({<br/>    name                             = string<br/>    switch1                          = string<br/>    switch2                          = string<br/>    vpc_domain_policy                = string<br/>    vpc_explicit_protection_group_id = string<br/>  })</pre> | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->