module "github_repository" {
  source                = "github.com/library-ucsb/terraform-tfc-module-github_repository"

  name                  = var.repo.name
  description           = var.repo.description
  auto_init             = false
  visibility            = "public"
}


module "github_branch_protection" {
  source                    = "github.com/library-ucsb/terraform-tfc-module-github_branch_protection"
  repository_id             = module.github_repository.node_id
  enforce_admins            = var.repo.github_enforce_admins
  push_restrictions         = var.repo.github_push_restrictions
  allows_force_pushes       = var.repo.github_allows_force_pushes 
}

resource "github_branch_default" "main" {
  repository                = module.github_repository.name
  branch                    = "main"  
}

output "github_repository_project" {
    value = module.github_repository
}