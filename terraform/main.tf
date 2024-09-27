terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "srv-2" {
  ami           = "ami-0e86e20dae9224db8"
  instance_type = "t2.micro"
  key_name      = "mypair"

  tags = {
    Name = "srv-2"
  }
  user_data = file("${path.module}/build.sh")
}
