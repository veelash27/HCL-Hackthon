resource "aws_ecs_cluster" "mycluster" {
  name = var.cluster_name

  tags = {
    Name = var.cluster_name
    Environment = var.environment
  }
}

resource "aws_ecs_task_definition" "tasks" {
  family                   = var.task_family
  network_mode             = "awsvpc"
  cpu                      = var.task_cpu
  memory                   = var.task_memory
  requires_compatibilities = ["FARGATE"]
  execution_role_arn       = var.execution_role_arn
  task_role_arn            = var.task_role_arn

  container_definitions = jsonencode([
    {
      name  = var.container_name
      image = var.container_image
      portMappings = [
        {
          containerPort = var.container_port
          hostPort      = var.container_port
          protocol      = "tcp"
        }
      ]
      memoryReservation = var.container_memory_reservation
    }
  ])

  tags = {
    Name = var.task_family
    Environment = var.environment
  }
}

resource "aws_ecs_service" "ecs_service" {
  name            = var.service_name
  cluster         = aws_ecs_cluster.ecs_cluster.id
  task_definition = aws_ecs_task_definition.ecs_task.arn
  launch_type     = "FARGATE"

  network_configuration {
    subnets         = var.subnets
    security_groups = [var.security_group]
    assign_public_ip = var.assign_public_ip
  }

  desired_count = var.desired_count

  tags = {
    Name = var.service_name
    Environment = var.environment
  }
}
