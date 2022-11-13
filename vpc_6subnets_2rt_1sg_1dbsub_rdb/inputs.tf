variable "region"{
    type = string
}

variable "vpc_details"{
    type = object({
        name = string
        cidr = string
    })
}

variable "public_subnets_details"{
    type = object({
        name = list(string)
         az  = list(string)
    })
}

variable "private_subnets_details"{
    type = object({
        name = list(string)
        az   = list(string)
    })  
}

variable "igw_details" {
  type = object({
    name = string
  })
}

variable "rt_details" {
  type = object({
    public_rt_name  = string
    private_rt_name = string
  })
}

variable "sg_details" {
  type = object({
    name        = string
    description = string
    from_port   = number
    to_port     = number
    protocol    = string
  })
}
variable "mysql_db_subnet_group_details" {
  type = object({
    name = string
  })
}

variable "db_details" {
  type = object({
    allocated_storage = number
    db_name           = string
    engine            = string
    engine_version    = string
    instance_class    = string
    username          = string
    password          = string 
  })  
}
