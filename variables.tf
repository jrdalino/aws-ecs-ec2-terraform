# General
variable "aws_region" {
  type        = string
  description = "Used AWS Region."    
}

variable "aws_account" {
  type        = string
  description = "Used AWS Account."    
}

# ECS Cluster
variable "aws_ecs_cluster_name" {
  type        = string
  description = "(Required) The name of the cluster (up to 255 letters, numbers, hyphens, and underscores)"
}

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