resource "aws_s3_bucket" "s3-bucket" {
  bucket = var.bucket
  tags = {
    Name        = "Cloud Resume State Bkt"
    Environemnt = "Dev"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "s3-sse" {
  bucket = aws_s3_bucket.s3-bucket.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "aws_s3_bucket_versioning" "s3-versioning" {
  bucket = aws_s3_bucket.s3-bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}