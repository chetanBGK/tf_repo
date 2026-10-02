provider "aws" {
  region = "ap-south-1"
}

module "igw" {
  source = "../../../modules/igw"
    vpc_id = data.terraform_remote_state.vpc_id.outputs.vpc_id

}

terraform {
  backend "s3" {
    bucket = "my-terraform-state-02102026"
    key    = "dev/igw/terraform.tfstate"
    region = "ap-south-1"
  }
}