<!-- BEGIN_TF_DOCS -->
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
| <a name="module_cdp"></a> [cdp](#module\_cdp) | ../../aci/cdp-interface-policy | n/a |
| <a name="module_lacp"></a> [lacp](#module\_lacp) | ../../aci/lacp-policy | n/a |
| <a name="module_lldp"></a> [lldp](#module\_lldp) | ../../aci/lldp-interface-policy | n/a |
| <a name="module_llp"></a> [llp](#module\_llp) | ../../aci/fabric-if-pol | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_file"></a> [file](#input\_file) | give file name containing values | `string` | `"variables.yaml"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cdp"></a> [cdp](#output\_cdp) | n/a |
| <a name="output_lacp"></a> [lacp](#output\_lacp) | n/a |
| <a name="output_lldp"></a> [lldp](#output\_lldp) | n/a |
| <a name="output_llp"></a> [llp](#output\_llp) | n/a |
<!-- END_TF_DOCS -->