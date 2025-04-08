module "eks_virginia" {
  source             = "github.com/eleuiese2/aws-eks-iac.git"
  create             = var.create_eks
  create_ecr         = var.create_ecr
  ecr_name           = var.ecr_name
  vpc_id             = var.vpc_id
  project            = var.project
  namespace          = var.namespace
  environment        = var.environment
  kubernetes_version = var.kubernetes_version
  subnet_ids         = var.subnet_ids
  tags               = var.tags
}