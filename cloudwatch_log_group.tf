# CloudWatch Log
resource "aws_cloudwatch_log_group" "this" {
  name              = "/aws/ecs/${var.aws_ecs_cluster_name}/cluster"
  retention_in_days = 7
}