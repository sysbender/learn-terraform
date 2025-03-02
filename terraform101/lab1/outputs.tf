output "application_name" {
  value = var.application_name

}

output "environment_prefix" {
    value = local.environment_prefix
  
}

output "suffix" {
  value = random_string.suffix.result
}
output "regions" {
    value = var.regions
}


output "demo_random" {

    value = module.demo_random_module.random_string
}

output "demo_rando" {
    value = module.rando1.random_string
    
  
}