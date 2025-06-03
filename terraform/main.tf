provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "frontend" {
  ami           = "ami-0c55b159cbfafe1f0" # Ubuntu AMI (update if outdated)
  instance_type = "t2.micro"
  key_name      = "test"
  tags = {
    Name = "frontend"
  }
}

resource "aws_instance" "backend" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  key_name      = "test"
  tags = {
    Name = "backend"
  }
}