terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.93.0"
    }
  }

backend "s3" {
    bucket = "terraform-remotestate-file" # access for this bucket must be given to the user of this project only not for all users
    key    = "ec2-demo" # key must be unique in the bucket same key should not be used in other repos or tf projects
    region = "us-east-1"
    dynamodb_table = "state-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}