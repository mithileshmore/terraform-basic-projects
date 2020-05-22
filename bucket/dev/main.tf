provider "aws" {
  region     = "us-east-1"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
}

# Terraform backends cannot contain interpolations
terraform {
  backend "s3" {
    bucket  = "dev-test-bucket-terraform-two"
    key     = "dev/lambda-test_bucket_terraform_two/terraform.tfstate"
    region  = "us-east-1"
    encrypt = "true"
  }
}

module "bucket" {
  source = "../modules/bucket"

}

