
provider "aws" {
  region = "us-east-1"
}

## VPC ##
# resource "aws_vpc" "vpc" {
#   cidr_block = "10.5.0.0/16"
#   tags = {
#     Name = "sysadminas"
#     createdBy = "lobinha"
#   }
# }

# # Routing table for public subnets
# resource "aws_route_table" "public_subnet_routes" {
#   vpc_id = "${aws_vpc.vpc.id}"
#   route {
#     cidr_block = "0.0.0.0/0"
#     gateway_id = "${aws_internet_gateway.gw.id}"
#   }
#   tags = {
#     Name = "Public subnet routing table"
#     createdBy = "lobinha"
#   }
# }

# # Internet gateway for the public subnet
# resource "aws_internet_gateway" "gw" {
#   vpc_id = "${aws_vpc.vpc.id}"
#   tags = {
#     Name = "Public gateway"
#     createdBy = "lobinha"
#   }
# }

# resource "aws_subnet" "public_subnet_a" {
#   vpc_id = "${aws_vpc.vpc.id}"
#   cidr_block = "10.5.0.0/24"
#   availability_zone = "us-east-1a"
#   tags = {
#     Name = "Public subnet A"
#     createdBy = "lobinha"
#   }
# }

# # Associate the routing table to public subnet A
# resource "aws_route_table_association" "public_subnet_routes_assn_a" {
#   subnet_id = "${aws_subnet.public_subnet_a.id}"
#   route_table_id = "${aws_route_table.public_subnet_routes.id}"
# }


# EC2

resource "aws_instance" "app_instance" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"

  tags = {
    Name = "sysadminas-instance"
    createdBy = "lobinha"
  }
}

# S3
resource "aws_s3_bucket" "files" {
  bucket = "sysadminas-bucket"

  tags = {
    Name        = "sysadminas-bucket"
    createdBy = "lobinha"
  }
}

resource "aws_s3_bucket_acl" "files" {
  bucket = aws_s3_bucket.files.id
  acl    = "private"
}