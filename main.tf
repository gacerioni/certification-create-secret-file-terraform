resource "local_file" "super_secret_file" {
  content  = "Behold the super secret: ${var.secret_word}"
  filename = "/opt/certification/super_secret.txt"
}
