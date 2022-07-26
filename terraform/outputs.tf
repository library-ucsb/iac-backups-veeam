output "github_repository" {
    value                   = module.github_repository
}

output "aws_iam_group_policy" {
    value                   = aws_iam_group_policy.iam_group_policy
}

output "aws_iam_user" {
    value = {
      username              = aws_iam_user.veeam
      acceess_key_id        = aws_iam_access_key.veeam.id
      secret_access_key_id  = aws_iam_access_key.veeam.secret 
    }
}