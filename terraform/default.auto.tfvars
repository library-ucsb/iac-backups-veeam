github_owner                        = "library-ucsb"
veeam_aws_iam_username              = "veeam"


repo = {
    name                            = "iac-backups-veeam" #iac-dns-coredns
    description                     = ""
    github_organization             = "library-ucsb"
    github_enforce_admins           = false
    github_allows_force_pushes      = true
    github_push_restrictions        = [] 
}

tf_state_backend_s3 = {
    namespace                       = "ucsb-library"
    environment                     = "iac"
    stage                           = "backups-veeam"
    name                            = "terraform"
    attributes                      = [ "state" ]
}