resource "aws_ecr_repository" "medusa_repo" {
  name                 = var.ecr_repo_name
  image_tag_mutability = "MUTABLE"
}
