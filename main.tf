module "iam" {
  source = "./iam"

  users = var.users
  roles = var.roles
}

resource "aws_iam_user_policy_attachment" "user_policy_attachment" {
  policy_arn = aws_iam_policy.example_policy.arn

  for_each = toset(var.users)

  user = each.value
}

resource "aws_iam_role_policy_attachment" "role_policy_attachment" {
  policy_arn = aws_iam_policy.example_policy.arn

  for_each = toset(var.roles)

  role = each.value
}
