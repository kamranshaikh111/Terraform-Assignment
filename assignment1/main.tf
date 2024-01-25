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

#this is for ssh key.
resource "aws_key_pair" "this-key" {
  key_name   = var.KEY-NAME
  public_key = var.KEY
}

#this is for ec2 instance.
resource "aws_instance" "this-instance" {
  ami           = var.AMI-ID
  instance_type = var.INS-TYPE

  tags = {
    Name = "Terra"
  }
}

#this is for security group.
resource "aws_security_group" "this-SG" {
  name        = var.SG-NAME
  
  tags = {
    Name = var.SG-TAG
  }
  ingress {
    from_port        = var.HTTPD
    to_port          = var.HTTPD
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  ingress {
    from_port        = var.HTTPS
    to_port          = var.HTTPS
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
}

