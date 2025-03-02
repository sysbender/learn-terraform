

## 

### workflow

```shell
terraform init
terraform plan
terraform apply
terraform destroy



```
###  variable


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