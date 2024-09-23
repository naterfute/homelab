module "aws" {
  source                = "./modules/route53"
  aws_region = var.aws_region
  aws_access_key = var.aws_access_key
  aws_secret_key    = var.aws_secret_key
}

module "ntfy" {
  source = "./modules/ntfy"
  auth   = var.ntfy
}

module "extra_secrets" {
  source = "./modules/extra-secrets"
  data   = var.extra_secrets
}
