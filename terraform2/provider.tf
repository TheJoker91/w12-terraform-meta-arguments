#Terraform Block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.61.0"
    }
  }
}

#Provider Block
provider "aws" {
  region  = var.region
  profile = var.profile_name
}