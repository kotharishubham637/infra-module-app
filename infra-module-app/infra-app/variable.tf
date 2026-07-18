#this used for preveting the main code from hardcore
variable "env" {
  description = "environment"
  type        = string
}

variable "bucket_name" {
  description = "bucket name"
  type        = string
}

variable "instance_count" {
  description = "instance count"
  type        = number
}

variable "aws_instance_type" {
  description = "instance type"
  type        = string
}

variable "aws_ami" {
  description = "ami"
  type        = string
}

variable "hash_key" {
  description = "hash key for DynamoDB table"
  type        = string
}

variable "aws_region" {
  description = "aws region"
  type        = string
}

