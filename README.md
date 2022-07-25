# Library Project Template

Use this repository as a starting point for projects leveraging ansible or terraform within the Library environment.

The repository will contain:

- Prebuilt GitHub Actions Workflows for both Ansible and Terraform
- `ansible` directory containing the general Library defaults
- `terraform` directory with a default Library plan



## Prerequirements

- Privileges to create a GitHub Repository in the Library GitHub Organization
- Privileges to create AWS s3 and DynamoDB infrastructure.

## Steps

### Clone this Repo

```
$ cd some-directory
$ git clone git+https://github.com/library-ucsb/this-repo.git
```

### Terraform the new GitHub Repo

```
$ cd this-repo
$ cd terraform
```

Update `default.auto.tfvars` with new values.

### Assign GitHub Secrets to Repo