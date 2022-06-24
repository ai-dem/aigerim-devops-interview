module "terraform_description" {
  source     = "../modules/terraform-github-repository-lookup"
  repository = "hashicorp/terraform"
}

module "vault_description" {
  source     = "../modules/terraform-github-repository-lookup"
  repository = "hashicorp/vault"
}

module "local_file_terraform" {
  source   = "../modules/terraform-local-file"
  content  = module.terraform_description.description
  filename = "${path.root}/terraform-description.txt"
}

module "local_file_vault" {
  source   = "../modules/terraform-local-file"
  content  = module.vault_description.description
  filename = "${path.root}/vault-description.txt"
}
