data "terraform_remote_state" "vpc_id" {
    backend = "s3" 
      config = {
        bucket = "my-terraform-state-02102026"
        key    = "dev/vpc/terraform.tfstate"
        region = "ap-south-1"
      }
}

output "module_vpc_id" {
    value = data.terraform_remote_state.vpc_id.outputs.vpc_id
}