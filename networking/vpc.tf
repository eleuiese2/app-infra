module "vpc_virginia" {
  source     = "github.com/eleuiese2/aws-vpc-iac.git"
  region     = "us-east-1"
  cidr_block = var.cidr_block
  azs        = var.azs
  tags       = var.tags
}