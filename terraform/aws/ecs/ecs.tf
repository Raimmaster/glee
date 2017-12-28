terraform {
  backend "s3" {
    bucket = "acklen-terraform-state"
    region = "us-east-1"
  }
}
provider "aws" {
  region     = "us-east-1"
}

resource "aws_ecr_repository" "repository" {
  name = "${var.APPNAME}-${terraform.workspace}"
}
