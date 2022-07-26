output "github_repository" {
    value                   = module.github_repository
}

output "aws_iam_user" {
    value = {
      username              = aws_iam_user.veeam
      acceess_key_id        = aws_iam_access_key.veeam.id
      secret_access_key_id  = aws_iam_access_key.veeam.secret 
    }
    sensitive               = true
}