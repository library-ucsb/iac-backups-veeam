locals {
    role_name                   = "veeam-s3-storage"
}

resource "aws_s3_bucket" "veeam" {
    bucket                      = "ucsb-library-${local.role_name}"
}

resource "aws_s3_bucket_public_access_block" "veeam" {
    bucket                      = aws_s3_bucket.veeam.id
    block_public_acls           = true
    block_public_policy         = true
    ignore_public_acls          = true
    restrict_public_buckets     = true
}

module "aws_role" {
    source                      = "github.com/library-ucsb/terraform-module-aws-role-complete"

    role_name                   = local.role_name
    policy_relative_directory   = "./policy"
}


resource "aws_iam_user" "veeam" {
    name                        = var.veeam_aws_iam_username
}

resource "aws_iam_user_group_membership" "veeam" {
    user                        = aws_iam_user.veeam.name
    groups = [
        module.aws_role.aws_iam_group.name
    ]
}

resource "aws_iam_access_key" "veeam" {
    user                        = aws_iam_user.veeam.name
}