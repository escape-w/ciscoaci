variable "name" {
  description = "Name of VLanPool"
  type        = string
}
variable "description" {
  description = "Description of VLanPool"
  type        = string
}
variable "alloc_mode" {
  description = "Alloc_mode VLanPool"
}
#vlpol ranges
variable "ranges" {
  type = list(object({
    name_alias        = string
    description       = string
    from              = string
    to                = string
    alloc_mode_ranges = string
    ranges_role       = string
  }))
}