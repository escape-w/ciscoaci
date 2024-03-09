#EPG
variable "target_application_profile" {
  description = "ACI Application Profile DN"
  type        = string
}

variable "name" {
  description = "EPG Name"
  type        = string
}

variable "pc_enf_pref" {
  type = string
}

variable "pref_gr_memb" {
  type = string
}

variable "shutdown" {
  type = string
}

variable "description" {
  type = string

}

variable "target_bd" {
  description = "The associated ACI Bridge Domain"
  type        = string
}

