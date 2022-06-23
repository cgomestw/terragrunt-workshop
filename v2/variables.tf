variable "name" {
  type    = string
  default = "example"
}

variable "ami_name" {
  type    = string
  default = "ami-830c94e3"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "creator_name" {
  type    = string
  default = "Pessoinha"
}

variable "bucket_acl" {
  type    = string
  default = "private"
}

variable "region" {
  default = "us-east-1"
}