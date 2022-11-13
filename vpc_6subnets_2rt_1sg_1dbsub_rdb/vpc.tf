resource "aws_vpc" "my_vpc" {
  cidr_block = var.vpc_details.cidr
  tags = {
    "Name" = var.vpc_details.name
  }
}