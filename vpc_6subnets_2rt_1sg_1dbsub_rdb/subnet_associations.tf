resource "aws_route_table_association" "public_rt_subnet_association" {
    count = length(aws_subnet.public_subnets)
    subnet_id = aws_subnet.public_subnets[count.index].id
    route_table_id = aws_route_table.public_route_table.id
    depends_on = [
      aws_route_table.public_route_table
    ]
}

resource "aws_route_table_association" "private_rt_subnet_association" {
    count = length(aws_subnet.private_subnets)
    subnet_id = aws_subnet.private_subnets[count.index].id 
    route_table_id = aws_route_table.private_route_table.id
    depends_on = [
      aws_route_table.private_route_table
    ]
}