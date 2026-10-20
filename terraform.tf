terraform {
  /*
  cloud {
    organization = "faithful_mallards_apprentice_wave"

    workspaces {
      project = "Learn Terraform"
      name = "learn-terraform-aws-lauren"
    }
  }
  */


  backend "s3" {
    bucket       = "lauren-bootcamp-tfstate"
    key          = "modules-terraform-aws-lauren/terraform.tfstate" //path of tf inside bucket
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.48.0"
    }
  }

  required_version = ">= 1.8.2"
}

