# terraform-modules

Description
************

This repository contains Terraform code written according to best practices and uses Terraform modules, remote s3 backend and dynamo db state locking. Using a module based approach in Terraform promotes code reusuability and embraces DRY - DO NOT REPEAT YOURSELF software coding principle.
The project consists of 3 modules namely vpc , s3 and dynamodb. The project also contains 3 projects named vpc , s3 and dynamodb which in turn use the vpc,s3 and dynamodb module code.

The gitignore files have been coded to include .terraform folder that downloads the provider plugins, terraform state that may contain sensitive information and tfvars file that may contain sensitive information also.This prevents these files from being tracked in the version control system.


Note: Several individual branches , pull requests etc were created and approved accroding to version control best practices and then merged back to the main branch. For clarity, just the main branch was kept for code/concept illustration purposes.

