provider "aws" {
  region     = "us-west-1"
  access_key = "AKIAX3NVJFI7IFDABU6N"
  secret_key = "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"
}

module "ecs" {
  source                    = "../modules/ecs"
  cluster_name              = var.cluster_name
  task_family               = var.task_family
  task_cpu                  = var.task_cpu
  task_memory               = var.task_memory
  container_name            = var.container_name
  container_image           = var.container_image
  container_port            = var.container_port
  container_memory_reservation = var.container_memory_reservation
  execution_role_arn        = var.execution_role_arn
  task_role_arn             = var.task_role_arn
  service_name              = var.service_name
  desired_count             = var.desired_count
  subnets                   = var.subnets
  security_group            = var.security_group
  assign_public_ip          = var.assign_public_ip
  environment               = "dev"  # Environment-specific value
}

output "cluster_id" {
  value = module.ecs.cluster_id
}

output "task_definition_arn" {
  value = module.ecs.task_definition_arn
}

output "ecs_service_name" {
  value = module.ecs.ecs_service_name
}
