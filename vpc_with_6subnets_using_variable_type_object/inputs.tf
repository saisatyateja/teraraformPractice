variable "region" {
  type = string
}

variable "vpc_details" {
  type = object({
    vpc_cidr = string
    vpc_name = string
  })
}

variable "subnets_details" {
  type = object({
    subnet_names = list(string)
    subnet_az = list(string)
  })
}