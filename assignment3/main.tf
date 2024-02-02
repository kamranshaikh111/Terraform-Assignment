#this is provider block.
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.33.0"
    }
  }
}

provider "aws" {
  # Configuration options
}

# This is for EC2 Instance
resource "aws_instance" "this_instance" {
  ami = var.ami_id
  instance_type = var.instance_type

tags = {
    Name = var.instance_name
    }
}

# This is for AMI
resource "aws_ami_from_instance" "this_ami" {
  name = var.ami_name
  source_instance_id = aws_instance.this_instance.id
}

# This is for Security Group
resource "aws_security_group" "my_security_group" {
  name        = var.SG_name
  description = var.SG_description

  dynamic "ingress" {
    for_each = var.security_group_ports
    iterator = port
    content {
      from_port   = port.value
      to_port     = port.value
      protocol    = var.protocol_name
      cidr_blocks = [var.CIDR_name]
    }
  }

  dynamic "egress" {
    for_each = var.security_group_ports
    content {
      from_port   = egress.value
      to_port     = egress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}