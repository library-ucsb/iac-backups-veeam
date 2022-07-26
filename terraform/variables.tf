variable "github_owner" {
    type    = string 
    default = "library-ucsb"
}

variable "veeam_aws_iam_username" {
    type    = string
    default = "veeam"
}

variable "aws_region" {
  type      = string
  default = "us-west-2"  
}

variable "policy_relative_directory" {
  type      = string
  default   = "./policy"
}

variable "repo" {
  type = object({
    name                        = string
    description                 = string
    github_organization         = string
    github_enforce_admins       = bool
    github_allows_force_pushes  = bool
    github_push_restrictions    = list(string)
  })
}

variable "tf_state_backend_s3" {
  type = object({
    namespace                   = string
    environment                 = string 
    stage                       = string
    name                        = string
    attributes                  = list(string)
  })
}

