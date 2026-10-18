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

resource "aws_security_group" "devops_web_sg" {
      
            name = "devops_web_sg"
            description = "Allow HTTP traffic"
ingress {

         from_port = 80
         to_port = 80
         protocol = "tcp"
         cidr_blocks = ["0.0.0.0/0"]
}       



}

# Testing automatic Jenkins pipeline trigger
