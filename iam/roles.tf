resource "aws_iam_role" "roles" {
  count = length(var.roles)

  name                 = var.roles[count.index]
  assume_role_policy   = file("${path.module}/assume_role_policy.json")
}
