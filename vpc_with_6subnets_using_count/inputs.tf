variable "region" {
  type = string
}
variable "vpc_cidr" {
  type = string
}
variable "vpc_name" {
  type = string
}

variable "subnet_name" {
  type = list(string)
}
variable "az" {
  type = list(string)
}