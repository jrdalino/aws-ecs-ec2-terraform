# ECS Cluster
resource "aws_ecs_cluster" "this" {
  name = var.aws_ecs_cluster_name

  setting {
    name  = "containerInsights"
    value = "enabled"
  }

  depends_on = [
    aws_cloudwatch_log_group.this,
  ]
}