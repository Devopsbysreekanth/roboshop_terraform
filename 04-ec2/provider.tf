terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.37.0"# AWS provider version, not terraform version
    }
  }

  backend "s3" {
    bucket = "roboshoppro"
    key    = "mongodb"
    region = "us-east-1"
    # dynamodb_table = "roboshoptable"
  }
}

provider "aws" {
  region = "us-east-1"
}