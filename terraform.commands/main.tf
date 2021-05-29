resource "local_file" "pet" {
  filename        = "/Users/kartik/Desktop/projects/terraform/terraform.commands/pets.txt"
  content         = "My pet's name is Romy"
  file_permission = "700"
}
