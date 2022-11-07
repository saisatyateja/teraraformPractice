#subnet1
resource "aws_subnet" "subnet1" {
  vpc_id = aws_vpc.my_vpc.id
  cidr_block = var.subnet1_cidr
  tags = {
    "Name" = var.subnet1_name
  }
  depends_on = [
    aws_vpc.my_vpc
  ]
}
#subnet2
resource "aws_subnet" "subnet2" {
  vpc_id = aws_vpc.my_vpc.id
  cidr_block = var.subnet2_cidr
  tags = {
    "Name" = var.subnet2_name
  }
  depends_on = [
    aws_vpc.my_vpc,aws_subnet.subnet1
  ]
}
#subnet3
resource "aws_subnet" "subnet3" {
  vpc_id = aws_vpc.my_vpc.id
  cidr_block = var.subnet3_cidr
  tags = {
    "Name" = var.subnet3_name
  }
  depends_on = [
    aws_vpc.my_vpc,aws_subnet.subnet2
  ]
}
#subnet4
resource "aws_subnet" "subnet4" {
  vpc_id = aws_vpc.my_vpc.id
  cidr_block = var.subnet4_cidr
  tags = {
    "Name" = var.subnet4_name
  }
  depends_on = [
    aws_vpc.my_vpc,aws_subnet.subnet3
  ]
}
#subnet5
resource "aws_subnet" "subnet5" {
  vpc_id = aws_vpc.my_vpc.id
  cidr_block = var.subnet5_cidr
  tags = {
    "Name" = var.subnet5_name
  }
  depends_on = [
    aws_vpc.my_vpc,aws_subnet.subnet4
  ]
}
#subnet6
resource "aws_subnet" "subnet6" {
  vpc_id = aws_vpc.my_vpc.id
  cidr_block = var.subnet6_cidr
  tags = {
    "Name" = var.subnet6_name
  }
  depends_on = [
    aws_vpc.my_vpc,aws_subnet.subnet5
  ]
}
