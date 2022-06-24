# Prerequisites

- Git
- GitHub account

# Rules

- You can use the internet however you want in this challenge

# Prompt

In this question, there are several issues you will encounter. We want to see how you fix bugs and deal with limitations but still get the job done.

- Look in terraform-binaries directory. Which binary should be used for your system?
- We will be applying terraform in the `environment/` directory
- Apply the terraform, fixing any problems you encounter
- Make a git commit at this point
- The following instructions ask you to avoid deleting the files `terraform-description.txt` or `vault-description.txt`
- Remove some duplication in `environment/main.tf`, without deleting the local files `terraform-description.txt` or `vault-description.txt`
  - In `environment/main.tf`, combine the two, separate module blocks using terraform-github-repository-lookup into a single module block and...
  - In `environment/main.tf`, combine the two, separate module blocks using terraform-local-file into a single module block and...
  - Apply the terraform without deleting the local files, documenting how you avoided deleting the local files
- Commit your changes and push up to github
