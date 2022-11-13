resource "aws_db_subnet_group" "mysql_subnet_group" {
    
  name = var.mysql_db_subnet_group_details.name
  
  subnet_ids = aws_subnet.private_subnets[*].id

  tags = {
    "Name" = var.mysql_db_subnet_group_details.name
  }
}