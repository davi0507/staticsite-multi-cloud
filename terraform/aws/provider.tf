terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.21"
    }
  }
  backend "s3" {
    bucket         = "staticsite-multicloud-tf-davi"
    # TALVEZ PRECISE MUDAR
    key            = "terraform.tfstate"
    dynamodb_table = "staticsite-multicloud-tf-davi1"
    # TALVEZ PRECISE MUDAR
    region         = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
  alias  = "cloud"
}