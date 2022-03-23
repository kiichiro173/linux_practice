terraform {
    required_version = "0.13.6"
    backend "s3" {
        bucket = "terraform-inami-tfstate"
        key = "my-first-file.tfstate"
        region = "us-east-1"
    }
}

provider "aws" {
    region = "us-east-1"
}