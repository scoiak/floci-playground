terraform {
  required_version = ">= 1.6.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = var.aws_region

  access_key = var.target == "local" ? "test" : null
  secret_key = var.target == "local" ? "test" : null

  skip_credentials_validation = var.target == "local"
  skip_metadata_api_check     = var.target == "local"
  skip_requesting_account_id  = var.target == "local"
  skip_region_validation      = var.target == "local"

  endpoints {
    rds = var.target == "local" ? var.localstack_endpoint : null
  }
}