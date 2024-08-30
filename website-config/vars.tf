variable "static-bkt" {
  description = "Name of private bucket used for static website hosting"
  type        = string
  default     = "www.rodscloudresume.org"
}

variable "region" {
  description = "Region of AWS account"
  type = string
  default = "us-east-1"
}

variable "certificate-arn" {
  description = "ARN of my certificate"
  type = string
  default = "arn:aws:acm:us-east-1:796973480898:certificate/ec5c4058-e902-4547-a3ee-0a4cb78745ef"
  
}