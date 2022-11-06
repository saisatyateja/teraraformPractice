variable "region" {
  type = string
  default = "us-east-2"
}
variable "vpc_cidr" {
  type = string
  default = "10.0.0.0/24"
}
variable "vpc_name" {
  type = string
  default = "ohio_vpc"
}