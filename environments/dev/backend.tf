terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.33.0"
    }
  }
  backend "s3" {
    bucket = "infra-s3-pipeline"
    key    = "dev/terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "infra-table"
  }
  
}

provider "aws" {
  region = var.aws_region
}
