terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.33.0"
    }
  }
}

provider "aws" {
  
}

##### VPC ######
resource "aws_vpc" "my_vpc1" {
  cidr_block = var.cidr

  tags = {
    Name = var.resource_name
  }
}

##### Public & Private Subnets ######
resource "aws_subnet" "public_subnet1" {
  vpc_id     = aws_vpc.my_vpc1.id
  cidr_block = var.subnets.cidr-pub1
  availability_zone = "us-east-1a"
  tags = {
    Name = "pub_subnet1"
  }
}
resource "aws_subnet" "public_subnet2" {
  vpc_id     = aws_vpc.my_vpc1.id
  cidr_block = var.subnets.cidr-pub2
  availability_zone = "us-east-1b"
  tags = {
    Name = "pub_subnet2"
  }
}
resource "aws_subnet" "private_subnet1" {
  vpc_id     = aws_vpc.my_vpc1.id
  cidr_block = var.subnets.cidr-pvt1
}
resource "aws_subnet" "private_subnet2" {
  vpc_id     = aws_vpc.my_vpc1.id
  cidr_block = var.subnets.cidr-pvt2
}

##### Internet Gateway ######
resource "aws_internet_gateway" "this_internet_gateway" {
  vpc_id = aws_vpc.my_vpc1.id
}

##### Public and Private Route Table ######
resource "aws_route_table" "route_table_public" {
  vpc_id = aws_vpc.my_vpc1.id
  route {
    cidr_block = var.route_cidr
    gateway_id = aws_internet_gateway.this_internet_gateway.id
  }
}
resource "aws_route_table" "route_table_private" {
  vpc_id = aws_vpc.my_vpc1.id
  route {
    cidr_block     = var.route_cidr2
    nat_gateway_id = aws_nat_gateway.this_nat_gateway.id
  }
}

##### NAT Gateway ########
resource "aws_nat_gateway" "this_nat_gateway" {
  allocation_id = aws_eip.lb1.id
  subnet_id     = aws_subnet.private_subnet1.id

  tags = {
    Name = var.nat_gateway_name
  }
}

resource "aws_eip" "lb1" {
  domain = "vpc"
}

##### SSH key pair ######
resource "aws_key_pair" "this_key" {
  key_name   = var.key
  public_key = file(var.public_key)
}

##### Security Group ######
resource "aws_security_group" "this_sg" {
  name = var.sg_name

  ingress {
    from_port   = var.sg_ports
    to_port     = var.sg_ports
    protocol    = var.sg_protocol
    cidr_blocks = [var.sg_cidr]
  }

  ingress {
    from_port   = var.sg_ports
    to_port     = var.sg_ports
    protocol    = var.sg_protocol
    cidr_blocks = [var.sg_cidr]
  }

}

##### EC2 Instance ######
resource "aws_instance" "ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = aws_key_pair.this_key.key_name
  subnet_id     = aws_subnet.public_subnet1.id
  availability_zone = var.availability_zone

  tags = {
    Name = "EC2_Instance"
  }
}