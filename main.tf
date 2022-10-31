data "aws_ami" "ubuntu_image" {
  owners      = [var.owner_id]
  most_recent = true # latest
  filter {
    name   = "name"
    values = [var.ami_name]
  }
}
data "aws_vpc" "vpc" {

  filter {
    name   = "tag:Name"
    values = [var.vpc_name]
  }
}
data "aws_subnet" "private_subnet_1" {

  filter {
    name   = "tag:Name"
    values = [var.private_subnet_1_name]
  }
}

data "aws_subnet" "private_subnet_2" {

  filter {
    name   = "tag:Name"
    values = [var.private_subnet_2_name]
  }
}

data "aws_subnet" "public_subnet_1" {

  filter {
    name   = "tag:Name"
    values = [var.public_subnet_1_name]
  }
}

data "aws_subnet" "public_subnet_2" {

  filter {
    name   = "tag:Name"
    values = [var.public_subnet_2_name]
  }
}