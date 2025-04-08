output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc_virginia.vpc_id
}

output "public_subnet_ids" {
  description = "The IDs of the public subnets"
  value       = module.vpc_virginia.public_subnets_ids

}

output "private_subnet_ids" {
  description = "The IDs of the private subnets"
  value       = module.vpc_virginia.private_subnets_ids
}