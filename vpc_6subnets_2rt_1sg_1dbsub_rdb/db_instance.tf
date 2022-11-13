resource "aws_db_instance" "db_instance" {
  allocated_storage = var.db_details.allocated_storage
  db_name           = var.db_details.db_name
  engine            = var.db_details.engine
  engine_version    = var.db_details.engine_version
  instance_class    = var.db_details.instance_class
  username          = var.db_details.username
  password          = var.db_details.password 
  skip_final_snapshot = true
  db_subnet_group_name = aws_db_subnet_group.mysql_subnet_group.name

}