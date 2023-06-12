resource "random_string" "random_secret" {
  length = 16
  special = false
}

resource "local_file" "super_secret_file" {
  content  = "Behold the super secret: ${random_string.random_secret.result}"
  filename = "/opt/certification/super_secret.txt"
}
