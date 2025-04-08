create_vpc     = true
vpc_name       = "sim-vpc"
cidr_block_vpc = "10.0.0.0/16"
region         = "us-east-1"
cidr_public_subnets = [
  "10.0.1.0/24",
  "10.0.2.0/24",
  "10.0.3.0/24"
]
cidr_private_subnets = [
  "10.0.4.0/24",
  "10.0.5.0/24",
  "10.0.6.0/24"
]

availability_zones = [
  "us-east-1a",
  "us-east-1b",
  "us-east-1c"
]

create_eks                     = true
create_ecr                     = true
ecr_name                       = "sim-ecr"
namespace                      = "sim-demo"
kubernetes_version             = "1.29"
enabled_cluster_log_types      = ["api", "audit"]
endpoint_private_access        = false
endpoint_public_access         = true
public_access_cidrs            = ["10.0.0.0/16"]
fargate_additional_policy_arns = ["arn:aws:iam::aws:policy/AmazonEKSFargatePodExecutionRolePolicy"]
allowed_ip                     = "10.20.230.25/32"

tags = {
  Owner       = "devops-team"
  Environment = "dev"
  Terraform   = "true"
}
