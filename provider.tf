#terraform {
#  /* Uncomment this block to use Terraform Cloud for this tutorial
#  cloud {
#    organization = "organization-name"
#    workspaces {
#      name = "learn-terraform-module-use"
#    }
#  }
#  */
#
#  required_providers {
#    aws = {
#      source  = "hashicorp/aws"
#      version = "~> 4.4.0"
#    }
#  }
#  required_version = ">= 1.1.0"
#}
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.20.0"
    }
  }
}