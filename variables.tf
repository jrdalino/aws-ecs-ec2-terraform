# General
variable "aws_region" {
  type        = string
  description = "Used AWS Region."    
}

variable "aws_account" {
  type        = string
  description = "Used AWS Account."    
}

# Network
variable "aws_vpc_id" {
  type        = string
  description = "(Required) The id of the VPC"
}

variable "aws_subnet_id_1" {
  type        = string
  description = "(Required) The id of subnet 1"
}

variable "aws_subnet_id_2" {
  type        = string
  description = "(Required) The id of subnet 2"
}

# Security Groups

# ECS Cluster
variable "aws_ecs_cluster_name" {
  type        = string
  description = "(Required) The name of the cluster (up to 255 letters, numbers, hyphens, and underscores)"
}

# ECS Worker Nodes
variable "ssh_key_name" {
  description = "SSH key to use to enter and manage the EC2 instances within the cluster. Optional"
  default     = ""
}

variable "instance_type_spot" {
  default = "t3a.medium"
}

variable "spot_bid_price" {
  default     = "0.0142"
  description = "How much you are willing to pay as an hourly rate for an EC2 instance, in USD"
}

variable "min_spot_instances" {
  default     = "1"
  description = "The minimum EC2 spot instances to have available within the cluster when the cluster receives less traffic"
}

variable "max_spot_instances" {
  default     = "5"
  description = "The maximum EC2 spot instances that can be launched during period of high traffic"
}

# IAM Roles
variable "ecs_service_role_name" {
  type        = string
  description = "ECS Service Role Name"
}

variable "ecs_service_role_policy_name" {
  type        = string
  description = "ECS Service Role Policy Name"
}

variable "ecs_task_role_name" {
  type        = string
  description = "ECS Task Role Name"
}

variable "ecs_task_role_policy_name" {
  type        = string
  description = "ECS Task Role Policy Name"
}
