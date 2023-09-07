# Terraform-IAM

├── main.tf
├── variables.tf
├── outputs.tf
├── iam/
│   ├── users.tf
│   ├── roles.tf
│   ├── policies.tf
└── ...


Declare any variables that you'll use across IAM resources. -> variables.tf
Define the IAM users. -> iam/users.tf
Define the IAM roles. -> iam/roles.tf
Define the policies that will be attached to users and roles. -> iam/policies.tf
Attach policies to the created users and roles. -> main.tf
Optionally, can output the ARNs of the created IAM resources. -> outputs.tf
JSON file named assume_role_policy.json with the trust policy for roles. -> iam/assume_role_policy.json

Remember good security practices, like using environment variables or a tool like AWS Secrets Manager to handle sensitive information.
