variable "name" {
  type = string
}
variable "description" {
  type = string
}
variable "annotation" {
  #type = string
  type = list(string)
}
