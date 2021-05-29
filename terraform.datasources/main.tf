resource "local_file" "pet" {
    filename = "/Users/kartik/Desktop/projects/terraform/terraform.datasources/root/pets.txt"
    content = "My pet's name is Romy"
}

data local_file "dog" {
    filename = "/Users/kartik/Desktop/projects/terraform/terraform.datasources/root/dogs.txt"
}