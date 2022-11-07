region = "us-east-2"
vpc_details = {
  vpc_cidr = "10.0.0.0/21"
  vpc_name = "OHIO_VPC"
}
subnets_details = {
  subnet_az = [ "us-east-2a","us-east-2b","us-east-2c","us-east-2b","us-east-2c","us-east-2a" ]
  subnet_names = [ "web1","app1","db1","web2","app2","db2" ]
}