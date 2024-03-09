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
| [aci_access_port_block.access_pb](https://registry.terraform.io/providers/ciscodevnet/aci/2.11.1/docs/resources/access_port_block) | resource |
| [aci_access_port_selector.access_ps](https://registry.terraform.io/providers/ciscodevnet/aci/2.11.1/docs/resources/access_port_selector) | resource |
| [aci_leaf_interface_profile.leaf_interprof](https://registry.terraform.io/providers/ciscodevnet/aci/2.11.1/docs/resources/leaf_interface_profile) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_pb"></a> [access\_pb](#input\_access\_pb) | n/a | <pre>object({<br>    name        = string<br>    description = string<br>    from_card   = string<br>    from_port   = string<br>    to_card     = string<br>    to_port     = string<br>  })</pre> | n/a | yes |
| <a name="input_access_ps"></a> [access\_ps](#input\_access\_ps) | n/a | <pre>object({<br>    name                           = string<br>    description                    = string<br>    access_port_selector_type      = string<br>    relation_infra_rs_acc_base_grp = string<br>  })</pre> | n/a | yes |
| <a name="input_leaf_interprof"></a> [leaf\_interprof](#input\_leaf\_interprof) | n/a | <pre>object({<br>    name        = string<br>    description = string<br>  })</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_access_ps_id"></a> [access\_ps\_id](#output\_access\_ps\_id) | n/a |
| <a name="output_leaf_interprof_id"></a> [leaf\_interprof\_id](#output\_leaf\_interprof\_id) | n/a |
