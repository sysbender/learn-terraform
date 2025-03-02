resource "random_string" "suffix" {
  // attribute
  length  = 6
  upper   = true
  special = false
}

resource "random_string" "list" {
    count = length(var.regions)
    
    length = 8
    upper = false
    special = false

  
}

resource "random_string" "map" {

    length = 10
    for_each = var.region_instance_counnt
  
}
