output "cdp" {
  value = { for key, value in module.cdp : key => value }
}

output "lldp" {
  value = { for key, value in module.lldp : key => value }
}

output "llp" {
  value = { for key, value in module.llp : key => value }
}

output "lacp" {
  value = { for key, value in module.lacp : key => value }
}