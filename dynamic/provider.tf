terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
  backend "s3" {
    bucket = "aws78s-remote-state"
    key    = "expense-dynamic-demo"
    region = "us-east-1"
    dynamodb_table = "aws78s-locking"
  }
}

#provide authentication here
provider "aws"{
  region = "us-east-1"
}