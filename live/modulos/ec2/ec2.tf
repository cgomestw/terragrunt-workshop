# EC2

resource "aws_instance" "app_server" {
  ami           = var.ami_type
  instance_type = var.instance_type

  tags = {
    Name = "${var.name}-app-server"
    createdBy = "${var.creator}"
  }
}


resource "aws_instance" "db_server" {
  ami           = var.ami_type
  instance_type = var.instance_type
#   associate_public_ip_address = false

  tags = {
    Name = "${var.name}-db-server"
    createdBy = "${var.creator}"  }
}