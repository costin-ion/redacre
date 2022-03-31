
#Images are hosted in AWS-ECR service

#=======================first definition backend API===================================

resource "aws_ecs_task_definition" "redacre" {
  family                   = "${var.default_tag.Project}-task_definition"
  requires_compatibilities = ["FARGATE"]
  memory                   = 512
  cpu                      = 256
  network_mode             = "awsvpc"
  container_definitions = jsonencode([
    {
      name      = "sys-stats"
      image     = "public.ecr.aws/x4u2j5r7/red-acre/sys-stats:latest"
      cpu       = 0
      essential = true
      portMappings = [
        {
          containerPort = 80
          hostPort      = 80
          protocol      = "tcp"
        }
      ]
    }
  ])
}

#=====================second task definition backend API================================

resource "aws_ecs_task_definition" "api-backend" {
  family                   = "${var.default_tag.Project}-task_definition"
  requires_compatibilities = ["FARGATE"]
  memory                   = 512
  cpu                      = 256
  network_mode             = "awsvpc"
  container_definitions = jsonencode([
    {
      name      = "api-backend"
      image     = "public.ecr.aws/x4u2j5r7/red-acre/api:latest"
      cpu       = 0
      essential = true
      portMappings = [
        {
          containerPort = 5000
          hostPort      = 5000          
          protocol = "tcp"
        }
      ]
    }
  ])
}
