provider "aws" {
  region = var.region
}

module "iam_admin" {
  source               = "../modules/iam-admin"
  role_name            = var.role_name
  assume_role_policy   = var.assume_role_policy
  environment          = var.environment
}

output "admin_role_arn" {
  value = module.iam_admin.admin_role_arn
}
