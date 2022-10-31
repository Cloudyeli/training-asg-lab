variable "owner_id" {
  description = "Owner ID of AMI"
}

variable "ami_name" {
  description = "Name of our AMI"
}

variable "instance_type" {
  description = "Instance Type for our ASG"
  default     = "t2.micro"
}

variable "key_pair" {
  description = "The Name of my keypair to connect to my Instances"
}

variable "aws_region" {
  description = "The region of our Infrastructure"
}

variable "vpc_name" {
  description = "Name of our VPC"
}

variable "private_subnet_1_name" {
  description = "The Subnet name of the AZ 1"
}

variable "private_subnet_2_name" {
  description = "The Subnet name of the AZ 2"
}

variable "public_subnet_1_name" {
  description = "The Subnet name of the AZ 1"
}

variable "public_subnet_2_name" {
  description = "The Subnet name of the AZ 2"
}