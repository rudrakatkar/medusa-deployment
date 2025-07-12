provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source = "./vpc.tf"
}

module "ecs" {
  source = "./ecs.tf"
}
