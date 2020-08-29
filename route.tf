provider "aws" {
  region = "ap-south-1"
  profile = "rishabh"
}

resource "aws_route_table" "route" {
  vpc_id = "vpc-08955edc6939ac71a"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-0fb55b91ab250eace"
  }

  tags = {
    Name = "myroute"
  }
}

resource "aws_route_table_association" "a" {
  subnet_id      = "subnet-07bd09598b8a348c3"
  route_table_id = aws_route_table.route.id
}