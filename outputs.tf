output "file_path" {
  value = local_file.super_secret_file.filename
}

output "random_string" {
  value = random_string.random_secret.id
}
