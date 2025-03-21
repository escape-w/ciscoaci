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

| Name | Source | Version |
|------|--------|---------|
| <a name="module_application_profile"></a> [application\_profile](#module\_application\_profile) | ../../aci/application-profile | n/a |
| <a name="module_dhcp"></a> [dhcp](#module\_dhcp) | ../../aci/dhcp | n/a |
| <a name="module_epg_bd"></a> [epg\_bd](#module\_epg\_bd) | ../../aci/epg-bd | n/a |
| <a name="module_epg_bd_subnet"></a> [epg\_bd\_subnet](#module\_epg\_bd\_subnet) | ../../aci/epg-bd-subnet | n/a |
| <a name="module_epg_static_paths"></a> [epg\_static\_paths](#module\_epg\_static\_paths) | ../../aci/static-paths | n/a |
| <a name="module_epg_to_contract"></a> [epg\_to\_contract](#module\_epg\_to\_contract) | ../../aci/epg-to-contract | n/a |
| <a name="module_epg_to_physical_domain"></a> [epg\_to\_physical\_domain](#module\_epg\_to\_physical\_domain) | ../../aci/epg-to-domain | n/a |
| <a name="module_interafce_sub_policies"></a> [interafce\_sub\_policies](#module\_interafce\_sub\_policies) | ../../aci/interface-sub-policy | n/a |
| <a name="module_leaf_access_bulk_policy"></a> [leaf\_access\_bulk\_policy](#module\_leaf\_access\_bulk\_policy) | ../../aci/leaf-access-bp | n/a |
| <a name="module_leaf_access_port_policy"></a> [leaf\_access\_port\_policy](#module\_leaf\_access\_port\_policy) | ../../aci/leaf-access-pp | n/a |
| <a name="module_leaf_interface_profile"></a> [leaf\_interface\_profile](#module\_leaf\_interface\_profile) | ../../aci/leaf-interface-profile | n/a |
| <a name="module_leaf_profile_aci"></a> [leaf\_profile\_aci](#module\_leaf\_profile\_aci) | ../../aci/leaf-profile | n/a |
| <a name="module_physical_domain"></a> [physical\_domain](#module\_physical\_domain) | ../../aci/physical-domain | n/a |
| <a name="module_rul_contracts"></a> [rul\_contracts](#module\_rul\_contracts) | ../../aci/contracts/standard | n/a |
| <a name="module_rul_filters"></a> [rul\_filters](#module\_rul\_filters) | ../../aci/filters | n/a |
| <a name="module_rul_subjects_filters"></a> [rul\_subjects\_filters](#module\_rul\_subjects\_filters) | ../../aci/contracts/contract-subjects-filters | n/a |
| <a name="module_tenant"></a> [tenant](#module\_tenant) | ../../aci/tenant | n/a |
| <a name="module_vlpool"></a> [vlpool](#module\_vlpool) | ../../aci/vlan-pool | n/a |
| <a name="module_vpc_security_group"></a> [vpc\_security\_group](#module\_vpc\_security\_group) | ../../aci/vpc-security | n/a |
| <a name="module_vrf"></a> [vrf](#module\_vrf) | ../../aci/vrf | n/a |

## Resources

| Name | Type |
|------|------|
| [aci_rest_managed.dateTime](https://registry.terraform.io/providers/ciscodevnet/aci/2.11.1/docs/resources/rest_managed) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_application_profile"></a> [application\_profile](#input\_application\_profile) | ACI Application Profiles | <pre>map(object({<br/>    target_tenant = string<br/>    anp           = string<br/>  }))</pre> | n/a | yes |
| <a name="input_dhcp"></a> [dhcp](#input\_dhcp) | DHCP | <pre>map(object({<br/>    target_tenant    = string<br/>    dhcp_name        = string<br/>    dhcp_annotation  = string<br/>    dhcp_description = string<br/>    dhcp_mode        = string<br/>    dhcp_name_alias  = string<br/>    dhcp_owner       = string<br/>    relation_dhcp_addr = set(object({<br/>      addr          = string<br/>      target_tenant = string<br/>      anp           = string<br/>      epg           = string<br/>    }))<br/>  }))</pre> | n/a | yes |
| <a name="input_epg_bd"></a> [epg\_bd](#input\_epg\_bd) | n/a | <pre>list(object({<br/>    vlan_id       = string<br/>    description   = string<br/>    target_tenant = string<br/>    target_vrf    = string<br/>    target_anp    = string<br/>  }))</pre> | n/a | yes |
| <a name="input_epg_bd_subnet"></a> [epg\_bd\_subnet](#input\_epg\_bd\_subnet) | n/a | <pre>list(object({<br/>    vlan_id       = string<br/>    description   = string<br/>    target_tenant = string<br/>    target_vrf    = string<br/>    target_anp    = string<br/>    ip            = string<br/>    scope         = list(string)<br/>  }))</pre> | n/a | yes |
| <a name="input_epg_static_paths"></a> [epg\_static\_paths](#input\_epg\_static\_paths) | EPG Static Paths | <pre>map(object({<br/>    epg_with_subnet = bool   #True for epg_bd_subnet module | false for epg_bd module<br/>    vlan_id         = string #Select name of the epg<br/>    static_config = list(object({<br/>      interface_dn         = string<br/>      encap                = string<br/>      description          = optional(string)<br/>      deployment_immediacy = optional(string)<br/>      mode                 = optional(string)<br/>      primary_encap        = optional(string)<br/>    }))<br/>  }))</pre> | n/a | yes |
| <a name="input_epg_to_contract"></a> [epg\_to\_contract](#input\_epg\_to\_contract) | n/a | <pre>map(object({<br/>    epg_name      = string<br/>    contract_name = string<br/>    contract_type = string<br/>    annotation    = string<br/>    match_t       = optional(string)<br/>    prio          = string<br/>  }))</pre> | n/a | yes |
| <a name="input_epg_to_physical_domain"></a> [epg\_to\_physical\_domain](#input\_epg\_to\_physical\_domain) | EPG Physical Domain | <pre>map(object({<br/>    binding_type    = string<br/>    encap_mode      = string<br/>    epg_cos         = string<br/>    epg_cos_pref    = string<br/>    instr_imedcy    = string<br/>    switching_mode  = string<br/>    vlan_id         = string<br/>    epg_with_subnet = bool<br/>    # physical_domain_name = string<br/>  }))</pre> | n/a | yes |
| <a name="input_interafce_sub_policies"></a> [interafce\_sub\_policies](#input\_interafce\_sub\_policies) | Interface Sub Policies | <pre>object({<br/>    cdp = object({<br/>      name        = string<br/>      admin_st    = string<br/>      description = string<br/>    })<br/>    lldp = object({<br/>      name        = string<br/>      description = string<br/>      admin_rx_st = string<br/>      admin_tx_st = string<br/>    })<br/>    llp = object({<br/>      name        = string<br/>      description = string<br/>      auto_neg    = string<br/>      fec_mode    = string<br/>      speed       = string<br/>    })<br/>    lacp = object({<br/>      name        = string<br/>      description = string<br/>      ctrl        = list(string)<br/>      max_links   = string<br/>      min_links   = string<br/>      mode        = string<br/>    })<br/>  })</pre> | n/a | yes |
| <a name="input_leaf_access_bulk_policy"></a> [leaf\_access\_bulk\_policy](#input\_leaf\_access\_bulk\_policy) | Interface Access Policies | <pre>list(object({<br/>    name                              = string<br/>    lag_t                             = string<br/>    relation_infra_rs_lacp_pol_enable = bool #TO enable LACP policy or not<br/>  }))</pre> | n/a | yes |
| <a name="input_leaf_access_port_policy"></a> [leaf\_access\_port\_policy](#input\_leaf\_access\_port\_policy) | n/a | <pre>list(object({<br/>    name = string<br/>  }))</pre> | n/a | yes |
| <a name="input_leaf_interface_profile"></a> [leaf\_interface\_profile](#input\_leaf\_interface\_profile) | leaf interface profile | <pre>list(object({<br/>    leaf_interprof = object({<br/>      name        = string<br/>      description = string<br/>    })<br/>    access_ps = object({<br/>      name                      = string<br/>      description               = string<br/>      access_port_selector_type = string<br/>    })<br/>    access_pb = object({<br/>      name        = string<br/>      description = string<br/>      from_card   = string<br/>      from_port   = string<br/>      to_card     = string<br/>      to_port     = string<br/>    })<br/>    leaf_to_access_policy = string #local reference for bundle or port access policy ID<br/>    bulk_policy_enable    = bool   #to swtich between bluk and port policy<br/>  }))</pre> | n/a | yes |
| <a name="input_leaf_profile_aci"></a> [leaf\_profile\_aci](#input\_leaf\_profile\_aci) | leaf profile | <pre>list(object({<br/>    leaf_profile = object({<br/>      name        = string<br/>      description = string<br/>      annotation  = string<br/>      name_alias  = string<br/>      leaf_selector = object({<br/>        name                    = string<br/>        switch_association_type = string<br/>        node_block = object({<br/>          name      = string<br/>          from_node = string<br/>          to_node   = string<br/>        })<br/>      })<br/>    })<br/>  }))</pre> | n/a | yes |
| <a name="input_physical_domain"></a> [physical\_domain](#input\_physical\_domain) | n/a | <pre>object({<br/>    name              = string<br/>    aaep              = string<br/>    description_aaep  = string<br/>    vlpool_name_alias = string #Local refference for Vlan pool ID<br/>  })</pre> | n/a | yes |
| <a name="input_rul_contracts"></a> [rul\_contracts](#input\_rul\_contracts) | Contracts - Standard | <pre>list(object({<br/>    target_tenant        = string<br/>    contract_name        = string<br/>    contract_description = string<br/>    contract_scope       = string<br/>  }))</pre> | n/a | yes |
| <a name="input_rul_filters"></a> [rul\_filters](#input\_rul\_filters) | Filters | <pre>map(object({<br/>    target_tenant = string<br/>    filter_name   = string<br/>    description   = string<br/>    entries = list(object({<br/>      description   = string<br/>      name          = string<br/>      apply_to_frag = string<br/>      arp_opc       = string<br/>      d_from_port   = string<br/>      d_to_port     = string<br/>      ether_t       = string<br/>      icmpv4_t      = string<br/>      icmpv6_t      = string<br/>      s_from_port   = string<br/>      s_to_port     = string<br/>    }))<br/>  }))</pre> | n/a | yes |
| <a name="input_rul_subjects_filters"></a> [rul\_subjects\_filters](#input\_rul\_subjects\_filters) | n/a | <pre>map(object({<br/>    contract_subj_name           = string<br/>    contract_name                = string<br/>    apply_both_directions_enable = string<br/>    subject_filter = list(object({<br/>      target_tenant = string<br/>      target_filter = string<br/>      action        = string<br/>    }))<br/>  }))</pre> | n/a | yes |
| <a name="input_tenant"></a> [tenant](#input\_tenant) | ACI Tenant information | <pre>map(object({<br/>    name        = string<br/>    description = optional(string)<br/>  }))</pre> | n/a | yes |
| <a name="input_user"></a> [user](#input\_user) | APIC Login | `map(any)` | n/a | yes |
| <a name="input_vlpool"></a> [vlpool](#input\_vlpool) | Vlan Pool and Physical Domain | <pre>list(object({<br/>    vlpool_name       = string<br/>    description       = string<br/>    alloc_mode_vlpool = string<br/>    from              = string<br/>    to                = string<br/>    alloc_mode_ranges = string<br/>    ranges_role       = string<br/>    name_alias        = string<br/>  }))</pre> | n/a | yes |
| <a name="input_vpc_pg"></a> [vpc\_pg](#input\_vpc\_pg) | VPC Security | <pre>object({<br/>    name                             = string<br/>    switch1                          = string<br/>    switch2                          = string<br/>    vpc_domain_policy                = string<br/>    vpc_explicit_protection_group_id = string<br/>  })</pre> | n/a | yes |
| <a name="input_vrf"></a> [vrf](#input\_vrf) | ACI VRF information | <pre>map(object({<br/>    name          = string<br/>    description   = optional(string)<br/>    annotation    = optional(string)<br/>    name_alias    = optional(string)<br/>    target_tenant = string<br/>  }))</pre> | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->