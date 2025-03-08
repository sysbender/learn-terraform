terraform {
  cloud {
    organization = "sysbender"
    hostname = "app.terraform.io" # Optional; defaults to app.terraform.io

    workspaces {
        name = "learn-terraform"
    #   project = "learn-terraform"

    #   tags = {
    #     source = "cli"
    #   }
    }
  }
}
