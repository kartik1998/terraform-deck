resource "local_file" "pet" {
  filename = "/Users/kartik/Desktop/projects/terraform/multiple.providers/root/pets.txt"
  content  = "Petname Romy"
}

# Provider

resource "random_pet" "my-pet" {
  prefix    = "Mr"
  separator = "."
  length    = "1"
}