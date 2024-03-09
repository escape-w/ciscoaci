variable "description" {
  type = string

}
variable "ip" {
  description = "Subnets IP Address"
  type        = string
}
variable "scope" {
  description = "List of network visibility of the subnet"
  type        = list(string)
  nullable    = true
}
variable "ctrl" {
  type = list(string)
}
variable "preferred" {
  type = string

}
variable "virtual" {
  type = string
}

variable "parent_dn" {
  type = string
}
