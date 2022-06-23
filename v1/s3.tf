# S3
resource "aws_s3_bucket" "files" {
  bucket = "sysadminas-bucket"
  force_destroy = true

  tags = {
    Name      = "sysadminas-bucket"
    createdBy = "lobinha"
  }
}

resource "aws_s3_bucket_acl" "files" {
  bucket = aws_s3_bucket.files.id
  acl    = "private"
}