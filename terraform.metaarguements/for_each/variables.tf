variable "filename" {
  type = set(string) # for-each cannot be used with lists
  default = [
    "/Users/kartik/Desktop/projects/terraform/terraform.metaarguements/for_each/root/pets.txt",
    "/Users/kartik/Desktop/projects/terraform/terraform.metaarguements/for_each/root/dogs.txt",
    "/Users/kartik/Desktop/projects/terraform/terraform.metaarguements/for_each/root/cats.txt"
  ]
}