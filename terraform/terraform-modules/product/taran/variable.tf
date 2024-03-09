variable "user" {
  description = "APIC Login"
  type        = map(any)
}

variable "tenant" {
  description = "ACI Tenant information"
  type = map(object({
    name        = string
    description = optional(string)
  }))
}

variable "vrf" {
  description = "ACI VRF information"
  type = map(object({
    name          = string
    description   = optional(string)
    annotation    = optional(string)
    name_alias    = optional(string)
    target_tenant = string
  }))
}

variable "application_profile" {
  description = "ACI Application Profiles"
  type = map(object({
    target_tenant = string
    anp           = string
  }))
}

variable "epg_bd" {
  type = list(object({
    vlan_id       = string
    description   = string
    target_tenant = string
    target_vrf    = string
    target_anp    = string
  }))
}

variable "epg_bd_subnet" {
  type = list(object({
    vlan_id       = string
    description   = string
    target_tenant = string
    target_vrf    = string
    target_anp    = string
    ip            = string
    scope         = list(string)
  }))
}

#Vlan Pool and Physical Domain
variable "vlpool" {
  type = list(object({
    vlpool_name       = string
    description       = string
    alloc_mode_vlpool = string
    from              = string
    to                = string
    alloc_mode_ranges = string
    ranges_role       = string
    name_alias        = string
  }))
}

variable "physical_domain" {
  type = object({
    name              = string
    aaep              = string
    description_aaep  = string
    vlpool_name_alias = string #Local refference for Vlan pool ID
  })

}

#Interface Sub Policies
variable "interafce_sub_policies" {
  type = object({
    cdp = object({
      name        = string
      admin_st    = string
      description = string
    })
    lldp = object({
      name        = string
      description = string
      admin_rx_st = string
      admin_tx_st = string
    })
    llp = object({
      name        = string
      description = string
      auto_neg    = string
      fec_mode    = string
      speed       = string
    })
    lacp = object({
      name        = string
      description = string
      ctrl        = list(string)
      max_links   = string
      min_links   = string
      mode        = string
    })
  })
}

#Interface Access Policies
variable "leaf_access_bulk_policy" {
  type = list(object({
    name                              = string
    lag_t                             = string
    relation_infra_rs_lacp_pol_enable = bool #TO enable LACP policy or not
  }))
}

variable "leaf_access_port_policy" {
  type = list(object({
    name = string
  }))

}

#leaf profile
variable "leaf_profile_aci" {
  type = list(object({
    leaf_profile = object({
      name        = string
      description = string
      annotation  = string
      name_alias  = string
      leaf_selector = object({
        name                    = string
        switch_association_type = string
        node_block = object({
          name      = string
          from_node = string
          to_node   = string
        })
      })
    })
  }))
}
#leaf interface profile
variable "leaf_interface_profile" {
  type = list(object({
    leaf_interprof = object({
      name        = string
      description = string
    })
    access_ps = object({
      name                      = string
      description               = string
      access_port_selector_type = string
    })
    access_pb = object({
      name        = string
      description = string
      from_card   = string
      from_port   = string
      to_card     = string
      to_port     = string
    })
    leaf_to_access_policy = string #local reference for bundle or port access policy ID
    bulk_policy_enable    = bool   #to swtich between bluk and port policy
  }))
}
#VPC Security
variable "vpc_pg" {
  type = object({
    name                             = string
    switch1                          = string
    switch2                          = string
    vpc_domain_policy                = string
    vpc_explicit_protection_group_id = string
  })
}
#EPG Static Paths
variable "epg_static_paths" {
  type = map(object({
    epg_with_subnet = bool   #True for epg_bd_subnet module | false for epg_bd module
    vlan_id         = string #Select name of the epg
    static_config = list(object({
      interface_dn         = string
      encap                = string
      description          = optional(string)
      deployment_immediacy = optional(string)
      mode                 = optional(string)
      primary_encap        = optional(string)
    }))
  }))
}
#EPG Physical Domain
variable "epg_to_physical_domain" {
  type = map(object({
    binding_type    = string
    encap_mode      = string
    epg_cos         = string
    epg_cos_pref    = string
    instr_imedcy    = string
    switching_mode  = string
    vlan_id         = string
    epg_with_subnet = bool
    # physical_domain_name = string
  }))
}
#DHCP
variable "dhcp" {
  type = map(object({
    target_tenant    = string
    dhcp_name        = string
    dhcp_annotation  = string
    dhcp_description = string
    dhcp_mode        = string
    dhcp_name_alias  = string
    dhcp_owner       = string
    relation_dhcp_addr = set(object({
      addr          = string
      target_tenant = string
      anp           = string
      epg           = string
    }))
  }))
}
#Filters
variable "rul_filters" {
  type = map(object({
    target_tenant = string
    filter_name   = string
    description   = string
    entries = list(object({
      description   = string
      name          = string
      apply_to_frag = string
      arp_opc       = string
      d_from_port   = string
      d_to_port     = string
      ether_t       = string
      icmpv4_t      = string
      icmpv6_t      = string
      s_from_port   = string
      s_to_port     = string
    }))
  }))
}
#Contracts - Standard
variable "rul_contracts" {
  type = list(object({
    target_tenant        = string
    contract_name        = string
    contract_description = string
    contract_scope       = string
  }))
}
variable "rul_subjects_filters" {
  type = map(object({
    contract_subj_name           = string
    contract_name                = string
    apply_both_directions_enable = string
    subject_filter = list(object({
      target_tenant = string
      target_filter = string
      action        = string
    }))
  }))
}
variable "epg_to_contract" {
  type = map(object({
    epg_name      = string
    contract_name = string
    contract_type = string
    annotation    = string
    match_t       = optional(string)
    prio          = string
  }))
}
# #Contract & Contract_Subjects
# variable "rul_contracts" {
#   type = map(object({
#     target_tenant = string
#     contract_name = string
#     contract_description = string
#     contract_scope = string
#     contract_subjects = list(object({
#       name                   = optional(string)
#       description            = optional(string)
#       annotation             = optional(string)
#       cons_match_t           = optional(string)
#       name_alias             = optional(string)
#       prio                   = optional(string)
#       prov_match_t           = optional(string)
#       rev_flt_ports          = optional(string)
#       target_dscp            = optional(string)
#       apply_both_directions  = optional(string)
#       filter_for_unidirectional = optional(set(string))
#       consumer_to_provider = list(object({
#         prio                             = optional(string)
#         target_dscp                      = optional(string)
#         relation_vz_rs_in_term_graph_att = optional(string)
#         relation_vz_rs_filt_att          = list(object({
#           action              = optional(string)
#           directives          = optional(list(string))
#           priority_override   = optional(string)
#           filter_dn           = optional(string)
#       }))
#     }))

#     provider_to_consumer = list(object({
#       prio                             = optional(string)
#       target_dscp                      = optional(string)
#       relation_vz_rs_out_term_graph_att = optional(string)
#       relation_vz_rs_filt_att          = list(object({
#         action              = optional(string)
#         directives          = optional(list(string))
#         priority_override   = optional(string)
#         filter_dn           = optional(string)
#       }))
#     }))
#   }))
#   }))
# }
