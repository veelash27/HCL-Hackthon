provider "aws" {
  region     = "us-west-1"
  access_key = "AKIAX3NVJFI7IFDABU6N"
  secret_key = "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"
}

module "vpc" {
source = "../../modules/vpc"
cidr_block = var.cidr_block
vpc_name               = var.vpc_name
public_subnet_cidr     = var.public_subnet_cidr
availability_zone      = var.availability_zone
public_subnet_name     = var.public_subnet_name
private_subnet_cidr    = var.private_subnet_cidr
private_subnet_name    = var.private_subnet_name
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
  environment               = var.environment
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

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_id" {
  value = module.vpc.public_subnet_id
}

output "private_subnet_id" {
  value = module.vpc.private_subnet_id
}

