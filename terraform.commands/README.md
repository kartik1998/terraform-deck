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

```sh
To make more sense of this graph we can:
sudo apt update
sudo apt install graphviz -y
terraform graph | dot -Tsvg > graph.svg

## open graph.svg in browser
```