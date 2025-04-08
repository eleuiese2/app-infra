module "eks_virginia" {
  source               = "github.com/eleuiese2/aws-eks-iac.git"
  create               = var.create_eks
  vpc_id               = var.vpc_id
  project              = var.project
  namespace            = var.namespace
  environment          = var.environment
  kubernetes_version   = var.kubernetes_version
  subnet_ids           = var.subnet_ids
  tags                 = var.tags
}