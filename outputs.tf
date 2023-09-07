output "user_arns" {
  value = [for user in aws_iam_user.users : user.arn]
}

output "role_arns" {
  value = [for role in aws_iam_role.roles : role.arn]
}
