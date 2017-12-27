terraform {
  backend "s3" {
    bucket = "acklen-terraform-state"
    key    = "glee-backend/ecs"
    region = "us-east-1"
  }
}

resource "aws_ecr_repository" "repository" {
  name = "bar"
}