variable "vpc_pg" {
  type = object({
    name                             = string
    switch1                          = string
    switch2                          = string
    vpc_domain_policy                = string
    vpc_explicit_protection_group_id = string
  })
}
