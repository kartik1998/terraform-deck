## Terraform

- Installtion url: [terraform.download](https://www.terraform.io/downloads.html)
- HCL : Declarative language
- Terraform AWS docs: [terraform.aws.docs](https://learn.hashicorp.com/tutorials/terraform/aws-build?in=terraform/aws-get-started)

## Index

1. [local.file](https://github.com/kartik1998/dotterraform/tree/master/local.file)
2. [multiple.providers](https://github.com/kartik1998/dotterraform/tree/master/multiple.providers)
3. [input.variables](https://github.com/kartik1998/dotterraform/tree/master/input.variables)
4. [create.ec2](https://github.com/kartik1998/dotterraform/tree/master/create.ec2)
5. [resource.attributes](https://github.com/kartik1998/dotterraform/tree/master/resource.attributes)
6. [output.variables](https://github.com/kartik1998/dotterraform/tree/master/output.variables)
7. [terraform.commands](https://github.com/kartik1998/dotterraform/tree/master/terraform.commands)
8. [terraform.lifecycle.rules](https://github.com/kartik1998/dotterraform/tree/master/terraform.lifecycle.rules)
9. [terraform.datasources](https://github.com/kartik1998/dotterraform/tree/master/terraform.datasources)
10. [terraform.metaarguements](https://github.com/kartik1998/dotterraform/tree/master/terraform.metaarguements)
11. [aws.iam](https://github.com/kartik1998/dotterraform/tree/master/aws.iam)
12. [aws.s3](https://github.com/kartik1998/dotterraform/tree/master/aws.s3)

## Cheatsheet 

- `terraform init`: initialize plugins
- `terraform plan`: View terraform execution plan
- `terraform apply`: Run \*.tf files
- `terraform validate`: to validate configuration files
- `terraform fmt`: to format the terraform files to increase redability
- `terraform show`: prints out the current state of the infrastructure as seen by terraform
- `terraform show -json`: prints out the current state of the infrastructure as seen by terraform in json format
- `terraform providers`: list all providers
- `terraform output`: to list all outputs
- `terraform refresh`: to synce terraform with the real world infrastructure
- `terraform graph`: To create a visual representation of the dependencies in the terraform configuration / execution plan

```shell
# To make more sense of this graph we can:
sudo apt update
sudo apt install graphviz -y
terraform graph | dot -Tsvg > graph.svg
# open graph.svg in browser
```

## Version constraints

* You might face terraform version issues with providers which can be fixed by specifying the version in main configuration file like: 

```terraform
terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.1.0"
      # you can also use comparison operators like version = "< 2.2.0"
    }
  }
}
```

* refer link: https://registry.terraform.io/providers/hashicorp/terraform/1.0.0

* sample error will look like: 

![](https://raw.githubusercontent.com/kartik1998/dotterraform/master/images/version_error.png)
