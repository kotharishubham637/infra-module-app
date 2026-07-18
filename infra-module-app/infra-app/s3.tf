resource "aws_s3_bucket" "infra-s3" {
  bucket = "-"

  tags = {
    Name        = "-"
    Environment = var.env
  }
}