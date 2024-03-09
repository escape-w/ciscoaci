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
| [aci_leaf_profile.leaf_profile](https://registry.terraform.io/providers/ciscodevnet/aci/2.11.1/docs/resources/leaf_profile) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_leaf_profile"></a> [leaf\_profile](#input\_leaf\_profile) | Leaf profile configuration | <pre>object({<br>    name        = string<br>    description = string<br>    name_alias  = string<br>    leaf_selector = list(object({<br>      name                    = string<br>      switch_association_type = string<br>      node_block = list(object({<br>        name          = string<br>        from_port_num = string<br>        to_port_num   = string<br>      }))<br>    }))<br>  })</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vlpool_id"></a> [vlpool\_id](#output\_vlpool\_id) | n/a |
<!-- END_TF_DOCS -->