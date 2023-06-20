resource "aws_rds_cluster_endpoint" "static" {
  cluster_identifier          = aws_rds_cluster.wordpress.id
  cluster_endpoint_identifier = "static"
  custom_endpoint_type        = "READER"

  static_members = [
    aws_rds_cluster_instance.reader1.id,
    aws_rds_cluster_instance.reader2.id,
    aws_rds_cluster_instance.reader3.id,
  ]
}
