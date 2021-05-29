variable "filename" {
  default = "/Users/kartik/Desktop/projects/terraform/input.variables/root/pets.txt"
  # if default isn't used after terraform apply is run the input is taken during runtime 
  # we can also use environment variable as TF_VAR_default
  # -var flag can also be used to set the variable
  # automatically loaded varible files by terraform: *.auto.tfvars or *.auto.tfvars.json
  # You can use -var-file flag with taerraform.tfvars or terraform.tfvars.json
}

variable "content" {
  default = "Petname romey"
}

variable "prefix" {
  default = "Mrs"
}

variable "separator" {
  default = "."
}

variable "length" {
  default = "1"
}