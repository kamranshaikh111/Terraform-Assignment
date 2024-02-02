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

#This is for IAM user.
resource "aws_iam_user" "this-iam-user" {
  name = var.IAM-username
  path = var.IAM-user-path

  tags = {
    tag-key = "Devops"
  }
}

#This is for IAM Group.
resource "aws_iam_group" "this-iam-group" {
  name = var.IAM-user-grp-name
  path = var.IAM-user-grp-path
}