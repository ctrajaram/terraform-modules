# sekar-terraform-modules

Description
************

This repository contains Terraform code written according to best practices and uses Terraform modules, remote s3 backend and dynamo db state locking. Using a module based approach in Terraform promotes code reusuability and embraces DRY - DO NOT REPEAT YOURSELF software coding principle.

The project conssist of 3 modules namely vpc , s3 and dynamodb.

The project also contains 4 projects named vpc and s3 which in turn use the vpc and s3 module code.

The gitignore files have been coded to include .terraform folder that downloads the provider plugins, terraform state that may contain sensitive information and tfvars file that may contain sensitive information also.This prevents these files from being tracked in the version control system.


