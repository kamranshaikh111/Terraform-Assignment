##### VPC ######
variable "cidr" {
  type = string
}
variable "resource_name" {
  type = string
}


##### Public & Private Subnets ######
variable "subnets" {
  type = object({
    cidr-pub1 = string,
    cidr-pub2 = string,
    cidr-pvt1 = string,
    cidr-pvt2 = string
  })
}

##### Public and Private Route Table ######
variable "route_cidr" {
  type = string
}
variable "route_cidr2" {
  type = string
}

##### NAT Gateway ########
variable "nat_gateway_name" {
  type = string
}

##### SSH key pair ######
variable "key" {
    type = string
}
variable "public_key" {
  type = string
}

##### Security Group ######
variable "sg_name" {
    type = string
}
variable "sg_ports" {
  type = string
}
variable "sg_protocol" {
  type = string
}
variable "sg_cidr" {
  type = string
}

##### EC2 Instance ######
variable "ami_id" {
  type = string
}
variable "instance_type" {
  type = string
}
variable "availability_zone" {
  type = string
}
