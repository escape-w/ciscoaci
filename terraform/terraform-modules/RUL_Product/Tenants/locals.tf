locals {
  rul_config_data = yamldecode(file(var.file))

  tenants = local.rul_config_data != null ? flatten([
    for key, value in local.rul_config_data : {
      tenant      = key
      description = value.description
    }
    if key != null
  ]) : []

  application_profiles = local.rul_config_data != null ? flatten([
    for tenant_key, tenant_data in local.rul_config_data :
    [for application_profile in tenant_data.application_profiles : {
      application_profile         = application_profile
      application_profiles_tenant = tenant_key
      description                 = tenant_data.description
    }]
    if tenant_data.application_profiles != null
  ]) : []

  vrfs = local.rul_config_data != null ? flatten([
    for tenant_key, tenant_data in local.rul_config_data :
    [for vrf in tenant_data.vrfs : {
      vrf         = vrf
      vrfs_tenant = tenant_key
      description = tenant_data.description
    }]
    if tenant_data.vrfs != null
  ]) : []

  sets = local.rul_config_data != null ? flatten([
    for tenant_key, tenant_data in local.rul_config_data :
    [for set_key, set_value in tenant_data.bd_epg_subnet_set :
      {
        #bd                        = set_key
        set                       = set_key
        bds_tenant                = tenant_key
        arp_flood                 = set_value.arp_flood
        bridge_domain_type        = set_value.bridge_domain_type
        ip_learning               = set_value.ip_learning
        limit_ip_learn_to_subnets = set_value.limit_ip_learn_to_subnets
        mac                       = set_value.mac
        mcast_allow               = set_value.mcast_allow
        multi_dst_pkt_act         = set_value.multi_dst_pkt_act
        relation_fv_rs_ctx        = try(set_value.relation_fv_rs_ctx, "")
        unicast_route             = set_value.unicast_route
        description               = try(set_value.description, null)
        epg_application_profile   = set_value.target_application_profile
        pc_enf_pref               = set_value.pc_enf_pref
        pref_gr_memb              = set_value.pref_gr_memb
        shutdown                  = set_value.shutdown
        bd_name                   = set_value.name
        epg_name                  = set_value.name
        subnet_name               = set_value.name
        target_bd                 = set_value.name
        parent_dn                 = set_value.name
        ip                        = set_value.ip
        scope                     = set_value.scope
        ctrl                      = set_value.ctrl
        preferred                 = set_value.preferred
        virtual                   = set_value.virtual
      }
    ]
    if tenant_data.bd_epg_subnet_set != null
  ]) : []
}
