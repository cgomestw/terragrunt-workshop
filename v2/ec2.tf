# EC2

resource "aws_instance" "instance" {
  ami           = var.ami_name
  instance_type = var.instance_type

  tags = {
    Name = "${var.name}-instance"
    createdBy = var.creator_name
  }
}