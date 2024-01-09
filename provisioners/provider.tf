terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0"
    }
  }
  backend "s3" {
    bucket = "sowjanyaaws-remote-state"
    key    = "provisioners"
    region = "us-east-1"
    dynamodb_table = "sowjanyaaws-locking-prod"
    
  }


}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}