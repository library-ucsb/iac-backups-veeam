# You cannot create a new backend by simply defining this and then
# immediately proceeding to "terraform apply". The S3 backend must
# be bootstrapped according to the simple yet essential procedure in
# https://github.com/cloudposse/terraform-aws-tfstate-backend#usage
module "terraform_state_backend" {
  source                                = "cloudposse/tfstate-backend/aws"
  namespace                             = var.tf_state_backend_s3.namespace 
  environment                           = var.tf_state_backend_s3.environment
  stage                                 = var.tf_state_backend_s3.stage
  name                                  = var.tf_state_backend_s3.name 
  attributes                            = var.tf_state_backend_s3.attributes

  terraform_backend_config_file_path    = "."
  terraform_backend_config_file_name    = "backend.tf"
  force_destroy                         = false
}