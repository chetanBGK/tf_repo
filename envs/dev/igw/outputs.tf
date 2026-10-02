# data "terraform_remote_state" "vpc_id"{
#     backend = "local" 
#       config = {
#         path = "../vpc/terraform.tfstate"
#       }
# }

# output "vpc_id"{
#     value = data.terraform_remote_state.vpc_id.outputs.vpc_id
# }