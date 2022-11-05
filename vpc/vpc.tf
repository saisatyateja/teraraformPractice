resource "aws_vpc" "ohio_vpc" {
  cidr_block = "10.0.0.0/24"
  tags = {
    "Name" = "ohio_vpc"
  }
}