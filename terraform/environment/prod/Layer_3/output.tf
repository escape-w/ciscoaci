output "Layer_3" {
  value = { for key, value in module.layer_3 : key => value }
}


