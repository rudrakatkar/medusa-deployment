variable "aws_region" {
  default = "eu-north-1"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "subnet_cidrs" {
  type    = list(string)
  default = ["10.0.0.0/24", "10.0.1.0/24"]
}

variable "ecr_repo_name" {
  default = "medusa-backend"
}

variable "ecs_cluster_name" {
  default = "medusa-cluster"
}

variable "ecs_service_name" {
  default = "medusa-service"
}

variable "container_port" {
  default = 9000
}
