terraform {

  cloud {
    organization = "faithful_mallards_apprentice_wave"

    workspaces {
      project = "Learn Terraform"
      name = "learn-terraform-aws-lauren"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.92"
    }
  }

  required_version = ">= 1.2"
}

