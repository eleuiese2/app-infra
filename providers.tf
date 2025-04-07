provider "aws" {
  region = "us-east-1"
}

provider "aws" {
  alias  = "virginia"
  region = "us-east-1"
  default_tags {
    tags = var.tags
  }
}

provider "aws" {
  alias  = "ohio"
  region = "us-east-2"
  default_tags {
    tags = var.tags
  }
}

terraform {
  required_providers {
    aws = "5.61.0"
  }
}