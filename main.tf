terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1" # Use the Mumbai AWS region
}

resource "aws_s3_bucket" "devops_bucket" {
  bucket = "ashish-devops-practice-2026-unique123"
}

# Testing automatic Jenkins pipeline trigger
