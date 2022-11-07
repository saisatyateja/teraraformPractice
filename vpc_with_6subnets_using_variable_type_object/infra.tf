resource "aws_vpc" "my_vpc" {
  cidr_block = var.vpc_details.vpc_cidr
  tags = {
    "Name" = var.vpc_details.vpc_name
  }
}

resource "aws_subnet" "my_subnets" {
  vpc_id = aws_vpc.my_vpc.id
  count = length(var.subnets_details.subnet_names)
  availability_zone = var.subnets_details.subnet_az[count.index]
  cidr_block = cidrsubnet(var.vpc_details.vpc_cidr,3,count.index)
  tags = {
    "Name" = var.subnets_details.subnet_names[count.index]
  }
}