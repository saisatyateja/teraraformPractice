
resource "aws_subnet" "public_subnets" {
  count = length(var.public_subnets_details.name)
  vpc_id = aws_vpc.my_vpc.id
  cidr_block = cidrsubnet(var.vpc_details.cidr,3,count.index)
  availability_zone = var.public_subnets_details.az[count.index]
  tags = {
    "Name" = var.public_subnets_details.name[count.index]
  }
  depends_on = [
    aws_vpc.my_vpc
  ]
}

resource "aws_subnet" "private_subnets" {
  count = length(var.private_subnets_details.name)
  vpc_id = aws_vpc.my_vpc.id
  cidr_block = cidrsubnet(var.vpc_details.cidr,3,(4+count.index))
  availability_zone = var.private_subnets_details.az[count.index]
  tags = {
    "Name" = var.private_subnets_details.name[count.index]
  }
  depends_on = [
    aws_vpc.my_vpc,aws_subnet.public_subnets[3]
  ]
}

