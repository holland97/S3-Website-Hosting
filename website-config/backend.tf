terraform {
  backend "s3" {
    bucket         = "rodscloudresume-state-bkt9999"
    dynamodb_table = "rodscloudresume-db-table9999"
    key = "cloudresume/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true

  }
}