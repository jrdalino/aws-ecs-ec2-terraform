resource "aws_ecs_cluster" "this" {
  name = var.aws_ecs_cluster_name
}