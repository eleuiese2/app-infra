module "eks_virginia" {
  source               = "github.com/eleuiese2/aws-eks-iac.git"
  create               = var.create_eks
  vpc_id               = var.vpc_id
  cidr_block_vpc       = var.cidr_block_vpc
  region               = var.region
  cidr_public_subnets  = var.cidr_public_subnets
  cidr_private_subnets = var.cidr_private_subnets
  availability_zones   = var.availability_zones
  project              = var.project
  namespace            = var.namespace
  environment          = var.environment
  kubernetes_version   = var.kubernetes_version
  subnet_ids           = var.subnet_ids
  tags                 = var.tags
}