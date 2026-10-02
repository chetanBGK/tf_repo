provider "aws" {
  region = "ap-south-1"
}

module "vpc"{
    source = "../../../modules/vpc"
    vpc_cidr = "10.0.0.0/16"
}

terraform {
  backend "s3" {
    bucket = "my-terraform-state-02102026"
    key    = "dev/vpc/terraform.tfstate"
    region = "ap-south-1"
  }
}