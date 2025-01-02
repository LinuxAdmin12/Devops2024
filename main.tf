provider "aws" {
  version = "~> 5.0"
  profile = "default"
  region  = "us-east-1"
}
terraform {
  backend "s3" {
    bucket = "terraformhw125"
    key    = "devops/class/tfstate"
    region = "us-east-1"
  }
}
resource "aws_vpc" "main" {
  cidr_block          = "12.0.0.0/16"
  instance_tenancy      = "default"
  tags = {
    Name = "Vpctosendtobitbucket"
  }
}
