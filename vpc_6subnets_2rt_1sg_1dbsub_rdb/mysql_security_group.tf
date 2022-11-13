resource "aws_security_group" "db_sg" {
  vpc_id      = aws_vpc.my_vpc.id
  name        = var.sg_details.name
  description = var.sg_details.description

  ingress {
    description = "db sg "
    from_port = var.sg_details.from_port
    to_port   = var.sg_details.to_port
    protocol  = var.sg_details.protocol
    cidr_blocks = [aws_vpc.my_vpc.cidr_block]
  }
  depends_on = [
    aws_vpc.my_vpc
  ]
  tags = {
    "Name" = var.sg_details.name
  }
}