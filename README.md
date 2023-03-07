# sekar-terraform-modules

Description
************

This repository contains Terraform code written according to best practices and used Terraform modules, remote s3 backedn and dynamo db state locking. Using a module based approach in Terraform promotes code reusuability and embracing DRY - DO NOT REPEAT YOURSELF software coding principle.

The project conssist of 3 modules namely vpc , s3 and dynamodb.

The project also contains 4 projects named vpc and s3 which in turn use the vpc and s3 module code.

The gitignore files have been coded to include .terraform folder that downloads the provider plugins, terraform state that may contain sensitive information and tfvars file that may contain sensitive information also.This prevents these files from being tracked in the version control system.

Out of Scope
************

The subnets, route tables code have been commented out in the vpc project as that was not needed to illustrate the best practices with state locking and s3 backend for storing state when coding Terraform.That code has been kept in the vpc.tf project file however has been commented out so that it can be added in to the scope anytime.
