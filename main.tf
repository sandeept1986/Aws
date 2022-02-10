

provider "aws" {
  profile = "default"
  region  = "us-east-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0f7cb53c916a75006"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-065331ef3777eb285"]
  subnet_id    = "subnet-0b1acca0a363c5b53"

  tags = {
    Name = var.instance_name
  }
}
