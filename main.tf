provider "aws" {
  region = "us-east-2"

  default_tags {
    tags = {
      hashicorp-learn = "module-attach-raju"
    }
  }
}

resource "aws_eip" "nat" {
  count = 1
  vpc   = true
  tags  = {
    name = var.NAME
  }
}



module "vpc" {
 source  = "terraform-aws-modules/vpc/aws"
#  source = "../../"
  version = "3.16.0"

  name = var.vpc_name
  cidr = var.vpc_cidr

  azs             = var.vpc_azs
  private_subnets = var.vpc_private_subnets
  public_subnets  = var.vpc_public_subnets

  enable_nat_gateway = var.vpc_enable_nat_gateway

  tags = var.vpc_tags
}

module "ec2_instance" {
# source  = "../../"
  source  = "terraform-aws-modules/ec2-instance/aws"
#  source  = "terraform-aws-modules/vpc/aws"
  version = "4.0.0"
  count   = 1

  name = var.NAME
  create_spot_instance = true
  spot_type            = var.spot_type
  spot_instance_interruption_behavior = var.spot_behavior

  ami                    = var.ami
#  ami                  = var.ami
  instance_type          = var.instance_type
  monitoring             = true
  key_name               = var.NAME
#  key_name=
  vpc_security_group_ids = [module.vpc.default_security_group_id]
#  subnet_id="${module.vpc.public_subnets}"
  subnet_id = module.vpc.public_subnets[0]
#  subnet_id              = [module.vpc.public_subnets]
  tags = {
    Terraform   = "true"
    Environmet = "dev-raj"
  }
}

