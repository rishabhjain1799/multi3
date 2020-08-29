provider "aws" {
  region = "ap-south-1"
  profile = "rishabh"
}

resource "aws_subnet" "in_secondary_cidr" {
  vpc_id     = "vpc-08955edc6939ac71a"
  cidr_block = "192.168.0.0/24"
  availability_zone = "ap-south-1b"
  map_public_ip_on_launch = "true"
}

resource "aws_subnet" "in_secondary_cidr1" {
  vpc_id     = "vpc-08955edc6939ac71a"
  cidr_block = "192.168.1.0/24"
  availability_zone = "ap-south-1b"
}