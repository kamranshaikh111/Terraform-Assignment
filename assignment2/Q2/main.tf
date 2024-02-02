terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.34.0"
    }
  }
}

provider "aws" {
  # Configuration options
}

resource "aws_instance" "this_instance" {
  ami               = var.AMI-ID
  availability_zone = var.AVAIL-ZONE
  instance_type     = var.INS-TYPE
  subnet_id         = var.SUBNET-ID
  tags = {
    Name = "CE03"
  }
}

#this is for Elastic IP.
resource "aws_eip" "this_eip" {
  instance = var.INSTANCE-ID
  domain   = "vpc"
}

resource "aws_eip_association" "this_association" {
  instance_id   = var.INSTANCE-ID
  allocation_id = var.ALLOCATION-ID
}