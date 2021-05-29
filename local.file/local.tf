# resource: block name
# local: provider _ file: resource type
# pet: resource name

resource "local_file" "pet" {
  filename        = "/Users/kartik/Desktop/projects/terraform/local.file/root/pets.txt"
  content         = "Dogs make good pets"
  file_permission = "0700"
}