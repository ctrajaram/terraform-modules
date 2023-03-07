

module "vpc" {
    source = "../../modules/vpc"
    vpc_cidr_block = var.vpc_cidr_block
    aws_projectname = var.aws_projectname
    aws_region =  var.aws_region

}
