variable "aws_region" {
  type        = string
  description = "This is the aws region where the resources will be deployed"
}
variable "aws_projectname" {
  type        = string
  description = "This is the project name"
}

variable "dynamodb_tbl_name" {
  type        = string
  description = "This is the name of the dynamo db table used for locking the state"
}

variable "dynamodb_tbl_read_capacity" {
  type        = number
  description = "This is the read capacity units for the dynamo db table"
}

variable "dynamodb_tbl_write_capacity" {
  type        = number
  description = "This is the write capacity units for the dynamo db table"
}
