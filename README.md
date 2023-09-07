# Terraform-IAM
```
├── main.tf
├── variables.tf
├── outputs.tf
├── iam/
│   ├── users.tf
│   ├── roles.tf
│   ├── policies.tf
└── ...
```

Declare any variables that you'll use across IAM resources. -> variables.tf <br>
Define the IAM users. -> iam/users.tf <br>
Define the IAM roles. -> iam/roles.tf <br>
Define the policies that will be attached to users and roles. -> iam/policies.tf <br>
Attach policies to the created users and roles. -> main.tf <br>
Optionally, can output the ARNs of the created IAM resources. -> outputs.tf <br>
JSON file named assume_role_policy.json with the trust policy for roles. -> iam/assume_role_policy.json <br>

Pass IAM usernames and roles as -var input or file. <br>

Remember good security practices, like using environment variables or a tool like AWS Secrets Manager to handle sensitive information.
