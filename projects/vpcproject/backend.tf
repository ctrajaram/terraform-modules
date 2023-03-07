terraform {
  backend "s3" {
    bucket         = "sekar-vpcproject-bucket2"
    key            = "vpc/sekarprojecttfstate"
    region         = "us-east-1"
    dynamodb_table = "sekar-vpcproject-statelock-tbl"
  }
}