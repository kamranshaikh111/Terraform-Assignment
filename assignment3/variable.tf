# This is for EC2 Instance
variable "ami_id" {
  type = string
}
variable "instance_type" {
  type = string
}
variable "instance_name" {
  type = string
}

# This is for AMI
variable "ami_name" {
  type = string
}

# This is for Security Group
variable "SG_name" {
  type = string
}
variable "SG_description" {
  type = string
}
variable "protocol_name" {
  type = string
}
variable "CIDR_name" {
  type = string
}
variable "security_group_ports" {
  type        = list
  description = "ports"
  default     = [80, 22, 443]
}
