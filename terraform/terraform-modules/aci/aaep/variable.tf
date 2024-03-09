variable "name" {
  type = string
}

variable "description" {
  type = string
}

variable "physical_domain_names" {
  description = "List of physical domain names"
  type        = list(string)
}