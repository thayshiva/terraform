provider "aws" {
  region  = "${var.region}"
  profile = "${var.profile}"
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["*ubuntu-xenial-16.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

terraform {
  backend "s3" {
    bucket     = "vel-tech-eu-west-1-terraform"
    key        = "dev/terraform.tfstate"
    region     = "eu-west-1"
    encrypt    = true
  }
}
