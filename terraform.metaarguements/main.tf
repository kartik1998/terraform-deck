resource "local_file" "pet" {
  filename = var.filename[count.index]
  content  = "My pets name is Romy"
  count    = 3 # meta arguement to provision pets file 3 times
  # count   = length(var.filename) can also be used
}