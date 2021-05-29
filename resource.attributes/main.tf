resource "local_file" "pet" {
  filename = var.filename
  content  = "My pet's name is ${random_pet.my-pet.id}"
  # to specify dependency:
  # depends_on = ["random_pet.my-pet"] # No use to explicitly specify this
}

resource "random_pet" "my-pet" {
  prefix    = var.prefix
  separator = var.separator
  length    = var.length
}