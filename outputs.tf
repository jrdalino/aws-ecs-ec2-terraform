# ECS Cluster
output "aws_ecs_cluster_id" {
  value       = "${aws_ecs_cluster.this.id}"
  description = "The Id that identifies the cluster"
}

output "aws_ecs_cluster_arn" {
  value       = "${aws_ecs_cluster.this.arn}"
  description = "The Amazon Resource Name (ARN) that identifies the cluster"
}