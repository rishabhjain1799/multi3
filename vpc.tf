provider "aws" {
  region = "ap-south-1"
  profile = "rishabh"
}

resource "aws_vpc" "main" {
  cidr_block       = "192.168.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "myvpc"
  }
}