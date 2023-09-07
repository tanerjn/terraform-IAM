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

Remember good security practices, like using environment variables or a tool like AWS Secrets Manager to handle sensitive information. <br><br>




```AWS access is managed by setting IAM policies and linking them to IAM identities (users, groups of users, or roles) or AWS resources. A policy is an object in AWS that when associated with an identity or resource, defines their permissions. IAM policies specify what actions are allowed or denied on what AWS resources (e.g. user Alice can read objects from the “Production” bucket but can’t write objects in the “Dev” bucket whereas user Bob can have full access to S3).

S3 bucket policies, on the other hand, are resource-based policies that you can use to grant access permissions to your Amazon S3 buckets and the objects in it. S3 bucket policies can allow or deny requests based on the elements in the policy.(e.g. allow user Alice to PUT but not DELETE objects in the bucket).

Note: You attach S3 bucket policies at the bucket level (i.e. you can’t attach a bucket policy to an S3 object), but the permissions specified in the bucket policy apply to all the objects in the bucket. You can also specify permissions at the object level by putting an object as the resource in the Bucket policy.

IAM policies and S3 bucket policies are both used for access control and they’re both written in JSON using the AWS access policy language. ```
