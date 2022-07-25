terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "4.26.1"
    }
    aws = {
      source = "hashicorp/aws"
      version = "4.22.0"
    }
  }
}

provider "github" {
  owner = var.repo.github_organization
}

provider "aws" {
  region = var.aws_region
  assume_role {
    role_arn  = "arn:aws:iam::406663345920:role/ucsb-role-terraform-full"
  }
}