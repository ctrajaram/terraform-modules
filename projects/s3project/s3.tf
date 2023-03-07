module "s3" {
    source = "../../modules/s3"
    aws_projectname = var.aws_projectname
    aws_region =  var.aws_region
    bucketname = var.bucketname
}