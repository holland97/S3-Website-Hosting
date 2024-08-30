# Creates S3 bucket
resource "aws_s3_bucket" "project-bkt" {
  bucket = var.static-bkt
  tags = {
    Environment = "Dev"
    Name        = "Cloud Resume Bucket"
  }
}

# Enables static website hosting
resource "aws_s3_bucket_website_configuration" "static-website" {
  bucket = aws_s3_bucket.project-bkt.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }

  routing_rule {
    condition {
      key_prefix_equals = "docs/"
    }
    redirect {
      replace_key_prefix_with = "documents/"
    }
  }
}

# Calls for AWS account ID since it's needed in s3 bucket policy code block
data "aws_caller_identity" "current" {}


# Create bucket policy that allows CF to get content
resource "aws_s3_bucket_policy" "bucket_policy" {
  bucket = aws_s3_bucket.project-bkt.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid    = "AllowCloudFrontAccessOnly"
        Effect = "Allow"
        Principal = {
          Service = "cloudfront.amazonaws.com"
        }
        Action   = "s3:GetObject"
        Resource = "${aws_s3_bucket.project-bkt.arn}/*"
        Condition = {
          StringEquals = {
            "AWS:SourceArn" = "arn:aws:cloudfront::${data.aws_caller_identity.current.account_id}:distribution/${aws_cloudfront_distribution.s3_distribution.id}"
          }
        }
      }
    ]
  })
}
