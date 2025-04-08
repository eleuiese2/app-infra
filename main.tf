module "network" {
  source               = "./networking"
  create_vpc           = var.create_vpc
  vpc_name             = var.vpc_name
  cidr_block_vpc       = var.cidr_block_vpc
  region               = var.region
  cidr_public_subnets  = var.cidr_public_subnets
  cidr_private_subnets = var.cidr_private_subnets
  availability_zones   = var.availability_zones
}

module "backend" {
  depends_on                     = [module.network]
  source                         = "./backend"
  create_eks                     = var.create_eks
  namespace                      = var.namespace
  vpc_id                         = module.network.vpc_id
  private_subnet_ids             = module.network.private_subnet_ids
  public_subnet_ids              = module.network.public_subnet_ids
  kubernetes_version             = var.kubernetes_version
  enabled_cluster_log_types      = var.enabled_cluster_log_types
  endpoint_private_access        = var.endpoint_private_access
  endpoint_public_access         = var.endpoint_public_access
  public_access_cidrs            = var.public_access_cidrs
  tags                           = var.tags
  create_ecr                     = var.create_ecr
  ecr_name                       = var.ecr_name
  allowed_ip                     = var.allowed_ip
  fargate_additional_policy_arns = var.fargate_additional_policy_arns
}

