resource "aws_vpc" "my_vpc" {
  cidr_block = var.vpc_cidr
  tags = {
    "Name" = var.vpc_name
  }
}

resource "aws_subnet" "my_subnet" {
  vpc_id = aws_vpc.my_vpc.id
  count = length(var.az)
  availability_zone = var.az[count.index]
  cidr_block = cidrsubnet(var.vpc_cidr,3,count.index)
  tags = {
    "Name" = var.subnet_name[count.index]
  }
  depends_on = [
    aws_vpc.my_vpc
  ]
}