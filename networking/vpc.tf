module "vpc_virginia" {
  source               = "github.com/eleuiese2/aws-vpc-iac.git"
  create               = var.create_vpc
  vpc_name             = var.vpc_name
  cidr_block_vpc       = var.cidr_block_vpc
  region               = var.region
  cidr_public_subnets  = var.cidr_public_subnets
  cidr_private_subnets = var.cidr_private_subnets
  availability_zones   = var.availability_zones
}