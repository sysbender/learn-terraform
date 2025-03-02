variable "application_name" {

  type = string
  validation {
    condition = length(var.application_name) <= 12
    error_message = "Application name must be less than 13 characters"
  }

}


variable "environment_name" {
  type = string

}

# variable "instance_number" {
#   type = number

# }

variable "regions" {
  type = list(string)

}


variable "region_instance_counnt" {
    type = map(string)

  
}

variable "enabled" {
    type = bool
  
}

