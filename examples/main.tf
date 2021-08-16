provider "aws" {
  region = "eu-west-1"
}

module "s3_bucket" {
    source = "../"
    bucket_name = var.bucket_name
    
}