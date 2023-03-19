# s3 bucket created
resource "aws_s3_bucket" "bucket" {
  bucket              = var.bucketname
  object_lock_enabled = true
  tags = {
    Name = "${var.aws_projectname}terraformstatestore"
  }
}

#adding versioning to the s3 bucket
resource "aws_s3_bucket_versioning" "s3versioning" {
  bucket = aws_s3_bucket.bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}


# adding kms server side encryption with a customer master key that provides greated flexibility with key permissions compared to an AWS managed kms key

resource "aws_s3_bucket_server_side_encryption_configuration" "awss3encryption" {
  bucket = aws_s3_bucket.bucket.id
  rule {
    apply_server_side_encryption_by_default {
      kms_master_key_id = aws_kms_key.mykmsbucketkey.arn
      sse_algorithm     = "aws:kms"
    }
  }
}

resource "aws_kms_key" "mykmsbucketkey" {
  description = "This key is used to encrypt bucket objects"
}

# blocking s3 public access for security reasons

resource "aws_s3_bucket_public_access_block" "example" {
  bucket = aws_s3_bucket.bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
