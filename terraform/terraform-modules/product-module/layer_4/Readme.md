## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2, < 2.0 |
| <a name="requirement_aci"></a> [aci](#requirement\_aci) | 2.11.1 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_lapp"></a> [lapp](#module\_lapp) | ../../aci/leaf-access-pp | n/a |
| <a name="module_leaf_access_bp"></a> [leaf\_access\_bp](#module\_leaf\_access\_bp) | ../../aci/leaf-access-bp | n/a |
| <a name="module_lip"></a> [lip](#module\_lip) | ../../aci/leaf-interface-profile | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_file"></a> [file](#input\_file) | give file name containing values | `string` | `"variables.yaml"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_lapp"></a> [lapp](#output\_lapp) | n/a |
| <a name="output_leaf_access_bp"></a> [leaf\_access\_bp](#output\_leaf\_access\_bp) | n/a |
| <a name="output_lip"></a> [lip](#output\_lip) | n/a |
