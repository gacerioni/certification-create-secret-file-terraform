variable "secret_word" {
  type = string

  description = "The secret that we want to use to verify the challenge."

  validation {
    condition     = can(regex("^[A-Za-z0-9]+$", var.secret_word))
    error_message = "The secret must be a single word, alphanum. We can use the head of a md5 hash."
  }

}
