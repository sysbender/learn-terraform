## terraform state

save to hashicorp cloud

1. save token for current user

   file: ~/.terraformrc

   ```json

   credentials "app.terraform.io" {
        token="xxxkkkk"
        }
   ```

2. set backend

```json
  terraform {
    cloud {
      organization = "sysbender"
      hostname = "app.terraform.io" # Optional; defaults to app.terraform.io

      workspaces {
          name = "learn-terraform"
      }
    }
  }
```

##

### workflow

```shell
terraform init
terraform plan
terraform apply
terraform destroy



```

### variable

1. input variable
   ```shell
   terraform apply -var "application_name=myblog" -var "environment_name=dev"
   ```
1. local variable

1. output variable

   `terraform output application_name`

### workspace

```shell
terraform workspace list
terraform workspace new dev
terraform workspace select default


```

## azure

```shell
az account list --output table
az account show
```

env var: ARM_SUBSCRIPTION_ID = ""

azure abbreviation prefix

### use azure storage as backend for tf state

###

backend

```
# main.tf

# Required providers
provider "aws" {
  region = "us-east-1"  # Set your desired AWS region
}

# Terraform Cloud backend configuration
terraform {
  backend "remote" {
    organization = "your-organization"  # Replace with your Terraform Cloud organization name

    workspaces {
      name = "my-workspace"  # Replace with your workspace name
    }
  }
}

# Sample resource: an AWS EC2 instance
resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"  # Replace with your desired AMI ID
  instance_type = "t2.micro"

  tags = {
    Name = "MyFirstInstance"
  }
}

```
