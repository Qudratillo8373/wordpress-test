#resource "aws_db_subnet_group" "private_subnet" {
# name       = "private_subnet"
# subnet_ids = [aws_subnet.privateA.id, aws_subnet.privateB.id, aws_subnet.privateC.id] 
# subnet_ids =  module.vpc.private_subnet # Use with the VPC module
#}

resource "aws_rds_cluster" "wordpress" {
  cluster_identifier      = "aurora-cluster-wordpress"
  engine                  = "aurora-mysql"
  engine_version          = "5.7.mysql_aurora.2.03.2"
  availability_zones      = ["us-east-1a", "us-east-1b", "us-east-1c"]
  #db_subnet_group_name    = aws_db_subnet_group.private_subnet.name
  database_name           = "Wordpress"
  master_username         = "admin"
  master_password         = "bar"
  backup_retention_period = 5
  preferred_backup_window = "07:00-09:00"
}