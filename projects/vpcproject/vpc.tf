

module "vpc" {
  source          = "../../modules/vpc"
  vpc_cidr_block  = var.vpc_cidr_block
  aws_projectname = var.aws_projectname
  aws_region      = var.aws_region
  public_subnet_az1_cidr =  var.public_subnet_az1_cidr
  public_subnet_az2_cidr =  var.public_subnet_az2_cidr
  private_app_subnet_az1_cidr = var.private_app_subnet_az1_cidr
  private_app_subnet_az2_cidr =  var.private_app_subnet_az2_cidr
  private_data_subnet_az1_cidr = var.private_data_subnet_az1_cidr
  private_data_subnet_az2_cidr = var.private_data_subnet_az2_cidr
}
