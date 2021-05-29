terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.1.0"
    }
  }
}

resource "local_file" "pet" {
  filename = "/Users/kartik/Desktop/projects/terraform/version.constraint/root/pets.txt"
  content  = "My pets name is Romy"
}