resource "aws_rds_cluster" "rds_claster" {
  cluster_identifier             = "wordpress-cluster"
  engine                              = "aurora-mysql"
  engine_version                      = var.engine_version
  enable_http_endpoint                = true
  database_name                       = "mySQLdatabase"
  master_username                     = var.master_username
  master_password                     = "changeme"
  skip_final_snapshot                 = true
  db_subnet_group_name                = aws_db_subnet_group.db_subnet.name
  vpc_security_group_ids              = [aws_security_group.db_security.id]
  backup_retention_period             = 5
  storage_encrypted                   = true
  availability_zones                  = var.availability_zones

}
resource "aws_rds_cluster_instance" "writer" {
  apply_immediately  = true
  identifier         = "writer"
  publicly_accessible = true
  cluster_identifier = aws_rds_cluster.rds_claster.id
  instance_class     = "db.t2.small"
  engine             = aws_rds_cluster.rds_claster.engine
  engine_version     = aws_rds_cluster.rds_claster.engine_version
}

resource "aws_rds_cluster_instance" "reader" {
  depends_on = [
      aws_rds_cluster.rds_claster,
      aws_rds_cluster_instance.writer
    ]
  apply_immediately  = true
  promotion_tier = count.index
  count              = 3
  identifier         = "reader${format(count.index + 1)}"
  cluster_identifier = aws_rds_cluster.rds_claster.id
  instance_class     = "db.t2.small"
  engine             = aws_rds_cluster.rds_claster.engine
  engine_version     = aws_rds_cluster.rds_claster.engine_version
}