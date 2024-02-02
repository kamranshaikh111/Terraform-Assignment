##### VPC ######
cidr             = "10.0.0.0/16"
resource_name    = "terraform_vpc"

##### Public & Private Subnets ######
subnets = {
  cidr-pub1 = "10.0.0.0/24"
  cidr-pub2 = "10.0.1.0/24"
  cidr-pvt1 = "10.0.2.0/24"
  cidr-pvt2 = "10.0.3.0/24"
}

##### Public and Private Route Table ######
route_cidr       = "10.0.0.0/8"
route_cidr2      = "15.0.0.0/8"

##### NAT Gateway ########
nat_gateway_name = "NAT_gateway"


##### SSH key pair ######
key = "my_key"
public_key = "/root/.ssh/id_rsa.pub"

##### Security Group ######
sg_cidr = "0.0.0.0/0"
sg_name = "sec_SG"
sg_ports = "80"
sg_protocol = "tcp"

##### EC2 Instance ######
ami_id     = "ami-0277155c3f0ab2930"
instance_type    = "t2.micro"
availability_zone = "us-east-1a"


/*
aws_region       = "ap-south-1"
nat_allocation   = "aws_eip.lb1.id"
*/