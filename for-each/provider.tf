terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.64.0"
    }
  }
  backend "s3" {
    bucket = "sudheerdevopsengineer-remote-state"
    key    = "demo-remote-foreach"
    region = "us-east-1"
    dynamodb_table = "sudheerdevopsengineer-locking"
  }
}

provider "aws" {
  region = "us-east-1"
}