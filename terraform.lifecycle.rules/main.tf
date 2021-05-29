resource "local_file" "pet" {
    filename = "/Users/kartik/Desktop/projects/terraform/terraform.lifecycle.rules/root/pet.txt"
    content = "My pet's name is Romy"
    file_permission = "0700"
    lifecycle {
        create_before_destroy = true
        # If you don't want to desctroy previous resource use prevent_destroy
    }
}