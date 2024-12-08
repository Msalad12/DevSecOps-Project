provider "aws" {
  region = "eu-west-2" # London region
}
resource "aws_s3_bucket" "terraform-mt-project23" {
  bucket = "terraform-mt-project23"
  }
  terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "terraform-mt-project23"
    key            = "global/s3/terraform.tfstate"
    region         = "eu-west-2"
  }
}

