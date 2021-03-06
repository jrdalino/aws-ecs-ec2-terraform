# Terraform module to provision an AWS ECS Cluster using EC2 Launch Type

## This creates the following resources:
- ECS Cluster
- Security Groups for Worker Nodes
- Launch Configuration using Spot Instances
- Auto Scaling Group
- Auto Scaling Policy using Target Tracking

## Prerequisites
- Provision an S3 bucket to store Terraform State and DynamoDB for state-lock using https://github.com/jrdalino/aws-tfstate-backend-terraform

## Usage
- Replace variables in state_config.tf
- Replace variables in terraform.tfvars
- Initialize, Review Plan and Apply
```
$ terraform init
$ terraform plan
$ terraform apply
```

## Inputs
| Name | Description |
|------|-------------|
| | |

## Outputs
| Name | Description |
|------|-------------|
| | |

## (In progress) Terraform Module Usage
Include this repository as a module in your existing terraform code:
```
module "ecs-ec2" {
  source = "git::https://github.com/jrdalino/aws-ecs-ec2-terraform.git?ref=master"
}
```

## References