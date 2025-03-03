

# set the subscription
export ARM_SUBSCRIPTION_ID="02c8051d-bf87-4976-ba34-76e0d1f89158"
# set the application / environment
export TF_VAR_application_name="observability"
export TF_VAR_environment_name="dev"
# set the backend



# set backend
terraform init \
    -backend-config="resource_group_name=rg-terraform-state-dev" \
    -backend-config="storage_account_name=st7dmss4e2qk" \
    -backend-config="container_name=tfstate" \
    -backend-config="key=observability-dev" 

#  backend "azurerm" {
#     resource_group_name = "rg-terraform-state-dev"
#     storage_account_name = "st7dmss4e2qk"
#     container_name = "tfstate"
#     key = "observability-dev"
#   }
# run terraform

terraform $* 

# clean local
rm -rf .terraform

