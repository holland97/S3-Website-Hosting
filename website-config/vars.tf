variable "static-bkt" {
  description = "Name of private bucket used for static website hosting"
  type        = string
  default     = "rodscloudresume.org"
}

variable "region" {
  description = "Region of AWS account"
  type = string
  default = "us-east-1"
}

variable "certificate-arn" {
  description = "ARN of my certificate"
  type = string
  default = "arn:aws:acm:us-east-1:796973480898:certificate/b72aa12a-5c7b-4657-aa5e-421b77c1f3c9"
  
}