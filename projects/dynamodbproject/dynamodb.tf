module "dynamodb" {
  source                      = "../../modules/dynamodb"
  aws_projectname             = var.aws_projectname
  aws_region                  = var.aws_region
  dynamodb_tbl_name           = var.dynamodb_tbl_name
  dynamodb_tbl_read_capacity  = var.dynamodb_tbl_read_capacity
  dynamodb_tbl_write_capacity = var.dynamodb_tbl_write_capacity
}