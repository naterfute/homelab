terraform {
  required_version = "~> 1.7"

  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "kalebs-homelab"

    workspaces {
      name = "homelab-external"
    }
  }

  required_providers {
    route53 = {
      source = "hashicorp/aws"
      version = "~> 5.68.0"

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.26.0"
    }

    http = {
      source  = "hashicorp/http"
      version = "~> 3.4.0"
    }
  }
}


provider "route53" {
  region = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  }

provider "kubernetes" {
  # Use KUBE_CONFIG_PATH environment variables
  # Or in cluster service account
}
