variable "region" {
  description = "Region of AWS account"
  type        = string
  default     = "us-east-1"
}

variable "bucket" {
  description = "Name of bucket to store TF state"
  type        = string
  default     = "rodscloudresume-state-bkt9999"
}

variable "dynamodb" {
  description = "Name of DynamoDB table that locks state"
  type        = string
  default     = "rodscloudresume-db-table9999"
}
