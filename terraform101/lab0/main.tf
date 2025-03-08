# main.tf

# Configure the random provider
provider "random" {}

# Generate a random first name
resource "random_string" "first_name" {
  length  = 8
  special = false
  upper   = false
}

# Generate a random last name
resource "random_string" "last_name" {
  length  = 10
  special = false
  upper   = false
}

# Output the full name by combining the first and last names
output "full_name" {
  value = "${random_string.first_name.result} ${random_string.last_name.result}"
}
