output "Layer_2" {
  value = { for key, value in module.layer_2 : key => value }
}


