provider "aws" {
  region = "${var.region}"
}

resource "aws_s3_bucket" "terraform_infra" {
  bucket = "${var.name}-terraform-infra"
  acl    = "private"
  force_destroy = true

  tags = {
     Name = "Bucket for terraform states ${var.name}"
     createdBy = "${var.creator_name}"
  }
}

terraform {
  backend "s3" {
    bucket = "${var.name}-terraform-infra"
    region = "${var.region}"
    key = "base/terraform.tfstate"
  }
}

