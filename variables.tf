variable "tags" {
  description = "Etiquetas para los recursos"
  type        = map(string)
  default = {
    Environment = "dev"
    Project     = "sim"
  }
}

variable "create_vpc" {
  description = "Crear recursos"
  type        = bool
}

variable "vpc_name" {
  description = "Nombre de la VPC"
  type        = string
}

variable "cidr_block_vpc" {
  type = string
}

variable "region" {
  description = "La región de AWS donde se desplegarán los recursos"
  type        = string
  default     = "us-east-1"
}

variable "cidr_public_subnets" {
  description = "CIDR para las subredes públicas"
  type        = list(string)
}

variable "cidr_private_subnets" {
  description = "CIDR para las subredes privadas"
  type        = list(string)
}

variable "availability_zones" {
  description = "Lista de zonas de disponibilidad"
  type        = list(string)
}


#########EKs########
variable "create_eks" {
  type = bool
}
variable "namespace" {
  type = string
}

variable "environment" {
  type = string
}

variable "project" {
  type = string
}

variable "kubernetes_version" {
  type = string
}

variable "enabled_cluster_log_types" {
  type    = list(string)
  default = []
}

variable "endpoint_private_access" {
  type    = bool
  default = false
}

variable "endpoint_public_access" {
  type    = bool
  default = true
}

variable "public_access_cidrs" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}
