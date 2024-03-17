output "lapp" {
  value = { for key, value in module.lapp : key => value }
}

output "lip" {
  value = { for key, value in module.lip : key => value }
}

output "leaf_access_bp" {
  value = { for key, value in module.leaf_access_bp : key => value }
}
