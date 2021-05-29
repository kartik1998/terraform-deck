resource "local_file" "pet" {
  filename = "/Users/kartik/Desktop/projects/terraform/terraform.datasources/root/pets.txt"
  content  = "My pet's name is Romy"
  # To use data as content use: content = data.local_file.dog.content
}

data "local_file" "dog" {
  filename = "/Users/kartik/Desktop/projects/terraform/terraform.datasources/root/dogs.txt"
}