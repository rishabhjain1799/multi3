provider "aws" {
  region = "ap-south-1"
  profile = "rishabh"
}

resource "aws_instance" "web" {
  ami           = "ami-000cbce3e1b899ebd"
  instance_type = "t2.micro"
  key_name = "lw"
  vpc_security_group_ids = ["sg-0cf569ed5134782c6"]
  subnet_id = "subnet-07bd09598b8a348c3" 

  tags = {
    Name = "WordpressOS"
  }
}

resource "aws_instance" "web1" {
  ami           = "ami-08706cb5f68222d09"
  instance_type = "t2.micro"
  key_name = "lw"
  vpc_security_group_ids = ["sg-0cf569ed5134782c6"]
  subnet_id = "subnet-0dc06044a69c4f67a" 

  tags = {
    Name = "MySQL-OS"
  }
}


resource "null_resource" "nulllocal1"  {

	provisioner "local-exec" {
	    command = "start chrome  ${aws_instance.web.public_ip}"
  	}
  }