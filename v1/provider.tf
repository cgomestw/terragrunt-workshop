provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "terraform_infra" {
  bucket = "sysadminas-terraform-infra"
  acl    = "private"
  force_destroy = true

  tags = {
     Name = "Bucket for terraform states sysadminas"
     createdBy = "lobinha"
  }
}

terraform {
  backend "s3" {
    bucket = "sysadminas-terraform-infra"
    region = "us-east-1"
    dynamodb_table = "sysadminas-terraform-locks"
    key = "base/terraform.tfstate"
  }
}

