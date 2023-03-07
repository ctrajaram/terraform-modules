resource "aws_dynamodb_table" "terraform-lock" {
  name           = var.dynamodb_tbl_name
  read_capacity  = var.dynamodb_tbl_read_capacity
  write_capacity = var.dynamodb_tbl_write_capacity
  hash_key       = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
  tags = {
    "Name" = "DynamoDB Terraform State Lock Table"
  }
}