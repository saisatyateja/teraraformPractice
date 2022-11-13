region = "us-east-2"
vpc_details = {
  cidr = "10.0.0.0/21"
  name = "ohio_vpc"
}
public_subnets_details = {
  name = [ "app1","app2","web1","web2" ]
  az   = ["us-east-2a","us-east-2b","us-east-2a","us-east-2b"]
}
private_subnets_details = {
  az   = ["us-east-2a","us-east-2b" ]
  name = [ "db1","db2" ]
}
igw_details = {
  name = "my_igw"
}
rt_details = {
  private_rt_name = "private_rt" 
  public_rt_name  = "public_rt"
}
sg_details = {
  description = "security group from  terraform"
  from_port   = 3306
  name     = "msql_sg"
  protocol = "tcp"
  to_port  = 3306
}

mysql_db_subnet_group_details = {
  name = "my_db_subnet_group"
}

db_details = {
  allocated_storage = 20
  db_name           = "satya_db"
  engine            = "mysql"
  engine_version    = "5.7"
  instance_class    = "db.t2.micro"
  username          = "satya"
  password          = "saisatyateja" 
}