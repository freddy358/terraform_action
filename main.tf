provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "my_Ubuntu" {
  count         = 3
  ami           = "ami-0c2d06d50ce30b442"
  instance_type = "t3.micro"

  tags = {
    Name    = "My Ubuntu Server"
    Owner   = "Farid Bakhishli"
    Project = "Terraform Lessons"
  }
}


resource "aws_instance" "my_Amazon" {
  ami           = "ami-0c2d06d50ce30b442"
  instance_type = "t3.micro"

  tags = {
    Name    = "My Amazon Server"
    Owner   = "Farid Bakhishli"
    Project = "Terraform Lessons"
  }
}