# Allow EC2 instances to receive HTTP/HTTPS/SSH traffic IN and any traffic OUT
resource "aws_security_group" "sg_for_ec2_instances" {
  name_prefix = "${var.aws_ecs_cluster_name}_sg_for_ec2_instances_"
  description = "Security group for EC2 instances within the cluster"
  vpc_id      = "vpc-043631a22a451851e"
  lifecycle {
    create_before_destroy = true
  }
  
  tags = {
    Name = var.aws_ecs_cluster_name
  }
}

resource "aws_security_group_rule" "allow_ssh" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.sg_for_ec2_instances.id
}

resource "aws_security_group_rule" "allow_http_in" {
  type              = "ingress"  
  from_port         = 80
  to_port           = 80  
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]  
  security_group_id = aws_security_group.sg_for_ec2_instances.id
}

resource "aws_security_group_rule" "allow_https_in" {
  type              = "ingress"
  from_port         = 443
  to_port           = 443
  protocol          = "tcp"  
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.sg_for_ec2_instances.id

}

resource "aws_security_group_rule" "allow_egress_all" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.sg_for_ec2_instances.id  
}