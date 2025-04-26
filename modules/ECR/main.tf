resource "aws_ecr_repository" "ecr_repository" {
  name                 = var.ecr_name
  image_tag_mutability = var.image_tag_mutability
  image_scanning_configuration {
    scan_on_push = var.image_scanning_enabled
  }

  tags = {
    Environment = var.environment
  }
}

# Create a lifecycle policy for the ECR repository
resource "aws_ecr_lifecycle_policy" "lifecycle_policy" {
  repository = aws_ecr_repository.ecr_repository.name
  policy     = var.lifecycle_policy
}
