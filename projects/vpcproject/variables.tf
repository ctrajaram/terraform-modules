variable "aws_region" {
  type        = string
  description = "This is the aws region where the resources will be deployed"
}
variable "aws_projectname" {
  type        = string
  description = "This is the project name"
}

variable "vpc_cidr_block" {
  type        = string
  description = "This is the cidr block for the vpc"
}

variable "public_subnet_az1_cidr" {
  type        = string
  description = "This is the cidr block for the public subnet in availability zone 1"
}

variable "public_subnet_az2_cidr" {
  type        = string
  description = "This is the cidr block for the public subnet in availability zone 2"
}

variable "private_app_subnet_az1_cidr" {
  type        = string
  description = "This is the cidr block for the private app subnet in availability zone 1"
}

variable "private_app_subnet_az2_cidr" {
  type        = string
  description = "This is the cidr block for the private appin availability zone 2"
}

variable "private_data_subnet_az1_cidr" {
  type        = string
  description = "This is the cidr block for the private data subnet in avaialability zone 1"
}

variable "private_data_subnet_az2_cidr" {
  type        = string
  description = "This is the cidr block for the private data subnet in availability zone 2"
}