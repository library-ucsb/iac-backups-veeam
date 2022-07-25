github_owner                        = "library-ucsb"

repo = {
    name                            = "iac-SERVICE_CATEGORY-SERVICE" #iac-dns-coredns
    description                     = ""
    github_organization             = "library-ucsb"
    github_enforce_admins           = false
    github_allows_force_pushes      = true
    github_push_restrictions        = [] 
}

tf_state_backend_s3 = {
    namespace                       = "ucsb-library"
    environment                     = "iac"
    stage                           = "service_name"
    name                            = "terraform"
    attributes                      = [ "state" ]
}