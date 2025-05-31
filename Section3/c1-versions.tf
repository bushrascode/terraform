# terraform provider

terraform {
  required_version = "~> v1.12.1"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.0.0-beta2"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-2"
  profile = "default"
}

/* 
aws on line 6 is a local name 
local names are module specific and should be unique per-module
terraform configurations always refer to local name of provider outside required_provider block

source - it is the primary location where we can download the terraform provider
registry name is optional as default is going to be Terraform Public Registry 

Modules are reusable chunks of Terraform code that help you avoid repeating yourself.

Instead of writing the same 20 lines to create a VPC, or an S3 bucket, or an EC2 instance every time — you can use a module that does it for you, with just a few input variables.

**/