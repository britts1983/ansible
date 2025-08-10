terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.8.0"
    }
  }
}

provider "aws" {
  region = var.region
}

resource "aws_instance" "my_ec2" {
  count         = var.instance_count
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "my-ec2-${count.index}"
  }
}