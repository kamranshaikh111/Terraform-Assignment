#this is for ssh key.
variable "KEY-NAME" {type = string}
variable "KEY" {type = string}

#this is for ec2 instance.
variable "AMI-ID" {type = string}
variable "INS-TYPE" {type = string}

#this is for security group.
variable "SG-NAME" {type = string}
variable "SG-TAG" {type = string}
variable "HTTPD" {type = number}
variable "HTTPS" {type = number}



