terraform {
  required_version = ">= 0.12.2"

  backend "s3" {
    region         = "us-west-2"
    bucket         = "ucsb-library-iac-backups-veeam-terraform-state"
    key            = "terraform.tfstate"
    dynamodb_table = "ucsb-library-iac-backups-veeam-terraform-state-lock"
    profile        = ""
    role_arn       = ""
    encrypt        = "true"
  }
}
