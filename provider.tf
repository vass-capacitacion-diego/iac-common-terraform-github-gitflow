terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "4.26.1"
    }
  }

  backend "s3" {
    #bucket = "bucket-estados"
    bucket = "diego-estados-2abac26"
    key    = "estados/iac-common-github-gitflow"
    region = "us-east-1"
  }
}

provider "github" {
  # Configuration options
  token = var.GITHUB_TOKEN
  owner = var.organizacion
}
