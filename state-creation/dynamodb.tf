resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name         = var.dynamodb
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name        = "Cloud Resume Table Lock"
    Environment = "Dev"
  }
}