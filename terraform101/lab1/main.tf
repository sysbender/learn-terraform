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


resource "random_string" "if" {

    count = var.enabled ? 1 : 0
    length = 12

  
}

module "demo_random_module" {
  source  = "hashicorp/module/random"
  version = "1.0.0"
}

module "rando1" {
  source = "./modules/rando"
  length = 32
}