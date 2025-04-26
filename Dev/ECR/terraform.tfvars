region = "us-east-1"

# ECR Module Variables
ecr_repository_name = "dev-ecr-repo"
image_tag_mutability = "MUTABLE"
image_scanning_enabled = true
lifecycle_policy = <<EOF
{
  "rules": [
    {
      "rulePriority": 1,
      "description": "Expire untagged images older than 30 days",
      "selection": {
        "tagStatus": "untagged",
        "countType": "sinceImagePushed",
        "countUnit": "days",
        "countNumber": 30
      },
      "action": {
        "type": "expire"
      }
    }
  ]
}
EOF
environment = "dev"
