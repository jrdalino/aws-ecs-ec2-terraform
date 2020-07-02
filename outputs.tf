# Security Groups
output "aws_security_group_id" {
  value       = aws_security_group.sg_for_ec2_instances.id
  description = "The ID of the security group"
}

output "aws_security_group_arn" {
  value       = aws_security_group.sg_for_ec2_instances.arn
  description = "The ARN of the security group"
}

# ECS Cluster
output "aws_ecs_cluster_id" {
  value       = aws_ecs_cluster.this.id
  description = "The Id that identifies the cluster"
}

output "aws_ecs_cluster_arn" {
  value       = aws_ecs_cluster.this.arn
  description = "The Amazon Resource Name (ARN) that identifies the cluster"
}

# IAM Roles