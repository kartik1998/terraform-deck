resource "local_file" "pet" {
    filename = var.filename
    content = "My pet's name is ${random_pet.my-pet.id}"
}

resource "random_pet" "my-pet" {
    prefix = var.prefix
    separator = var.separator
    length = var.length
}