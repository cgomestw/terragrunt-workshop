# S3
resource "aws_s3_bucket" "files" {
  bucket = "${var.name}-bucket"
  force_destroy = true

  tags = {
    Name        = "${var.name}-bucket"
    createdBy = var.creator_name
  }
}

resource "aws_s3_bucket_acl" "files" {
  bucket = aws_s3_bucket.files.id
  acl    = var.bucket_acl
}