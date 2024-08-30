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
  default = "arn:aws:acm:us-east-1:796973480898:certificate/773fb477-66af-4ee6-8ff7-3d70075d45a8"
  
}