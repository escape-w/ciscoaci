variable "cdp" {
  type = object({
    name        = string
    admin_st    = string
    description = string
  })
}

variable "lldp" {
  type = object({
    name        = string
    description = string
    admin_rx_st = string
    admin_tx_st = string
  })
}

variable "llp" {
  type = object({
    name        = string
    description = string
    auto_neg    = string
    fec_mode    = string
    speed       = string
  })
}

variable "lacp" {
  type = object({
    name        = string
    description = string
    ctrl        = list(string)
    max_links   = string
    min_links   = string
    mode        = string
  })
}
