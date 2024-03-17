variable "leaf_interprof_name" {
  type = string
}

variable "description" {
  type = string
}

variable "name" {
  type = string
}

variable "access_port_selector_type" {
  type = string
}

variable "target_port_policy_group_name" {
  type    = string
  default = ""
}

variable "target_bundle_policy_group_name" {
  type    = string
  default = ""
}
