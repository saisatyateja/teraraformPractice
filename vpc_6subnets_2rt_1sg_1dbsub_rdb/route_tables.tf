resource "aws_route_table" "public_route_table" {
 vpc_id = aws_vpc.my_vpc.id
 route {
    cidr_block = local.any_where
    gateway_id = aws_internet_gateway.my_igw.id
 }
  tags = {
       "Name"=var.rt_details.public_rt_name
    }
}

resource "aws_route_table" "private_route_table" {
 vpc_id = aws_vpc.my_vpc.id
 route = []
  tags = {
       "Name"=var.rt_details.private_rt_name
    }
}