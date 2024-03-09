output "Layer_4" {
  value = { for key, value in module.layer_4 : key => value }
}


