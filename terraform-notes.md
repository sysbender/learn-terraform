

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

