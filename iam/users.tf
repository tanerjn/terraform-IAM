resource "aws_iam_user" "users" {
  count = length(var.users)

  name = var.users[count.index]
}
