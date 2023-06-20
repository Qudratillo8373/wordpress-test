resource "aws_rds_cluster_instance" "reader1" {
  apply_immediately  = true
  cluster_identifier = aws_rds_cluster.wordpress.id
  identifier         = "reader1"
  instance_class     = "db.t2.small"
  engine             = aws_rds_cluster.wordpress.engine
  engine_version     = aws_rds_cluster.wordpress.engine_version
}

resource "aws_rds_cluster_instance" "reader2" {
  apply_immediately  = true
  cluster_identifier = aws_rds_cluster.wordpress.id
  identifier         = "reader2"
  instance_class     = "db.t2.small"
  engine             = aws_rds_cluster.wordpress.engine
  engine_version     = aws_rds_cluster.wordpress.engine_version
}

resource "aws_rds_cluster_instance" "reader3" {
  apply_immediately  = true
  cluster_identifier = aws_rds_cluster.wordpress.id
  identifier         = "reader3"
  instance_class     = "db.t2.small"
  engine             = aws_rds_cluster.wordpress.engine
  engine_version     = aws_rds_cluster.wordpress.engine_version
}