resource "local_file" "this" {
  content         = var.content
  filename        = var.file_path
  file_permission = "0400"
}
