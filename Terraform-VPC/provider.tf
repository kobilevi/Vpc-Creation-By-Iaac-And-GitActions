terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

 
  backend "s3" {
    bucket = "kobi-terraform-remote-backend-s3"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  }
}


# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}