provider "aws" {
  region = "ap-south-1"
  profile = "rishabh"
}

resource "aws_internet_gateway" "gw" {
  vpc_id = 	"vpc-08955edc6939ac71a"

  tags = {
    Name = "myig"
  }
}