resource "aws_vpc" "main_vpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"

  tags = {
    Name = "main_vpc"
  }
}

output "vpc_id" {
  value = aws_vpc.main_vpc.id
}
