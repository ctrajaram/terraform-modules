# sekar-terraform-modules

Introduction
************

This repository contains Terraform code written according to best practices and used Terraform modules, remote s3 backedn and dynamo db state locking. Using a module based approach in Terraform promotes code reusuability and embracing DRY - DO NOT REPEAT YOURSELF software coding principle.

The project conssist of 3 modules namely vpc , s3 and dynamodb.

The project also contains 4 projects named vpc and s3 which in turn use the vpc and s3 module code.



Out of Scope
************

The subnets, route tables code have been commented out in the vpc project as that was not needed to illustrate the best practices with state locking and s3 backend for storing state when coding Terraform.That code has been kept in the vpc.tf project file however has been commented out.
