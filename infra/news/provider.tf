# Setup our aws provider
variable "region" {
  default = "us-east-1"
}
provider "aws" {
  region = "${var.region}"
}

terraform {
  backend "s3" {
    bucket = "news****-terraform-infra-na"
    region = "us-east-1"
    dynamodb_table = "news****-terraform-locks"
    key = "news/terraform.tfstate"
  }
}
