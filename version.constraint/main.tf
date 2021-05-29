terraform {
  required_providers {
    terraform = {
      source = "hashicorp/terraform"
      version = "1.0.2"
    }
  }
}

resource "local_file" "pet" {
  filename = "/Users/kartik/Desktop/projects/terraform/version.constraint/root/pets.txt"
  content  = "My pets name is Romy"
}