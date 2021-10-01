provider "aws" {
  region     = "eu-west-1"
  access_key = "AKIATXG2KUDTUDIJ4RBK"
  secret_key = "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"
}


resource "aws_instance" "my_Ubuntu" {
  count         = 3
  ami           = "ami-03b89077"
  instance_type = "t3.micro"

  tags = {
    Name    = "My Ubuntu Server"
    Owner   = "Farid Bakhishli"
    Project = "Terraform Lessons"
  }
}

resource "aws_instance" "my_Amazon" {
  ami           = "ami-03b89077"
  instance_type = "t3.micro"

  tags = {
    Name    = "My Amazon Server"
    Owner   = "Farid Bakhishli"
    Project = "Terraform Lessons"
  }
}