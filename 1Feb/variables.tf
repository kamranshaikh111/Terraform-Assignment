########## FOR PROJECT ########
# SSH key pair
variable "P_key_name" {
  type = string
}
variable "P_public" {
  type = string
}
#Security group
variable "P_sg_name" {
  type = string
}
variable "P_sg_desc" {
  type = string
}
variable "P_sg_ports" {
  type = string
}
variable "P_sg_protocol" {
  type = string
}
variable "P_sg_cidr" {
  type = string
}
# EC2 Instance
variable "P_ami_id" {
  type = string
}
variable "P_instance_type" {
  type = string
}

####### FOR WEB #########
# SSH key pair
variable "W_key_name" {
  type = string
}
variable "W_public" {
  type = string
}
# Security group
variable "W_sg_name" {
  type = string
}
variable "W_sg_desc" {
  type = string
}
variable "W_sg_ports" {
  type = string
}
variable "W_sg_protocol" {
  type = string
}
variable "W_sg_cidr" {
  type = string
}
# EC2 Instance
variable "W_ami_id" {
  type = string
}
variable "W_instance_type" {
  type = string
}

####### FOR APPLICATION #########
# SSH key pair
variable "A_key_name" {
  type = string
}
variable "A_public" {
  type = string
}
# Security group
variable "A_sg_name" {
  type = string
}
variable "A_sg_desc" {
  type = string
}
variable "A_sg_ports" {
  type = string
}
variable "A_sg_protocol" {
  type = string
}
variable "A_sg_cidr" {
  type = string
}
# EC2 Instance
variable "A_ami_id" {
  type = string
}
variable "A_instance_type" {
  type = string
}