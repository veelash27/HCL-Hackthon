provider "aws" {
  region     = "us-west-1"
  access_key = "AKIAX3NVJFI7IFDABU6N"
  secret_key = "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"
}

module "ecr" {
  source                = "../modules/ecr"
  ecr_repository_name   = var.ecr_repository_name
  image_tag_mutability  = var.image_tag_mutability
  image_scanning_enabled = var.image_scanning_enabled
  lifecycle_policy      = var.lifecycle_policy
  environment           = var.environment
}

output "ecr_repository_arn" {
  value = module.ecr.ecr_repository_arn
}

output "ecr_repository_name" {
  value = module.ecr.ecr_repository_name
}
