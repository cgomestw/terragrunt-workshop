# S3
resource "aws_s3_bucket" "files" {
  bucket = "${var.name}-bucket-${var.bucket_type}"
  force_destroy = true

  tags = {
    Name        = "${var.name}-bucket-${var.bucket_type}"
    createdBy = "${var.creator}"
  }
}

resource "aws_s3_bucket_acl" "files" {
  bucket = aws_s3_bucket.files.id
  acl    = "private"
}