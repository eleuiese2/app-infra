module "eks_virginia" {
  source                         = "github.com/eleuiese2/aws-eks-iac.git"
  create                         = var.create_eks
  create_ecr                     = var.create_ecr
  ecr_name                       = var.ecr_name
  namespace                      = var.namespace
  vpc_id                         = var.vpc_id
  public_subnet_ids              = var.public_subnet_ids
  private_subnet_ids             = var.private_subnet_ids
  kubernetes_version             = var.kubernetes_version
  tags                           = var.tags
  allowed_ip                     = var.allowed_ip
  fargate_additional_policy_arns = var.fargate_additional_policy_arns
}