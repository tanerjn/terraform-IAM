variable "users" {
  type        = list(string)
  description = "List of IAM usernames"
}

variable "roles" {
  type        = list(string)
  description = "List of IAM role names"
}
