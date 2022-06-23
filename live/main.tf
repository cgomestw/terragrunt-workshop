
provider "aws" {
  region = var.region
}


module "app_server" {
  source = "./modulos/ec2"
  name = var.name
  creator = var.creator
  type_server = "app"
}

module "db_server" {
  source = "./modulos/ec2"
  name = var.name
  creator = var.creator
  type_server = "db"
}

module "bucket" {
  source = "./modulos/s3"
  name = var.name
}
