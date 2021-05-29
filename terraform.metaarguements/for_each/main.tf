resource "local_file" "pet" {
  filename = each.value
  for_each = var.filename # if filename is a list then use toset(var.filename)
}