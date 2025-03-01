output "application_name" {
  value = var.application_name

}

output "environment_prefix" {
    value = local.environment_prefix
  
}

output "suffix" {
  value = random_string.suffix.result
}
