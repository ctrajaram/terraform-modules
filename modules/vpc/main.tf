# creating the vpc for the project 
resource "aws_vpc" "vpc" {
  cidr_block              = var.vpc_cidr_block
  instance_tenancy        = "default"
  enable_dns_hostnames    = true

  tags      = {
    Name    = "${var.aws_projectname}-vpc"
  }
}

# # creating the internet gateway and attaching it to the vpc created for the project
# resource "aws_internet_gateway" "internet_gateway" {
#   vpc_id    = aws_vpc.vpc.id

#   tags      = {
#     Name    = "${var.aws_projectname}-igw"
#   }
# }

# # usin the  data terraform source to get all the avalablility zones in the chosen region
# data "aws_availability_zones" "available_zones" {}

# # creating the public subnet in az1
# resource "aws_subnet" "public_subnet_az1" {
#   vpc_id                  = aws_vpc.vpc.id
#   cidr_block              = var.public_subnet_az1_cidr
#   availability_zone       = data.aws_availability_zones.available_zones.names[0]
#   map_public_ip_on_launch = true

#   tags      = {
#     Name    = "${var.aws_projectname}-public-subnet-az1"
#   }
# }

# # creating the public subnet in az2
# resource "aws_subnet" "public_subnet_az2" {
#   vpc_id                  = 
#   cidr_block              = 
#   availability_zone       = 
#   map_public_ip_on_launch = 

#   tags      = {
#     Name    = 
#   }
# }

# # create route table and add public route
# resource "aws_route_table" "public_route_table" {
#   vpc_id       = 

#   route {
#     cidr_block = 
#     gateway_id = 
#   }

#   tags       = {
#     Name     = 
#   }
# }

# # associate public subnet az1 to "public route table"
# resource "aws_route_table_association" "public_subnet_az1_route_table_association" {
#   subnet_id           = 
#   route_table_id      = 
# }

# # associate public subnet az2 to "public route table"
# resource "aws_route_table_association" "public_subnet_az2_route_table_association" {
#   subnet_id           = 
#   route_table_id      = 
# }

# # create private app subnet az1
# resource "aws_subnet" "private_app_subnet_az1" {
#   vpc_id                   = 
#   cidr_block               = 
#   availability_zone        = 
#   map_public_ip_on_launch  = 

#   tags      = {
#     Name    = 
#   }
# }

# # create private app subnet az2
# resource "aws_subnet" "private_app_subnet_az2" {
#   vpc_id                   = 
#   cidr_block               = 
#   availability_zone        = 
#   map_public_ip_on_launch  = 

#   tags      = {
#     Name    = 
#   }
# }

# # create private data subnet az1
# resource "aws_subnet" "private_data_subnet_az1" {
#   vpc_id                   = 
#   cidr_block               = 
#   availability_zone        = 
#   map_public_ip_on_launch  = 

#   tags      = {
#     Name    = 
#   }
# }

# # create private data subnet az2
# resource "aws_subnet" "private_data_subnet_az2" {
#   vpc_id                   = 
#   cidr_block               = 
#   availability_zone        = 
#   map_public_ip_on_launch  = 

#   tags      = {
#     Name    = 
#   }
# }