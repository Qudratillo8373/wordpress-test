output "username" {
  value = aws_rds_cluster.rds_claster.master_username
}

output "userpassword" {
    value = aws_rds_cluster.rds_claster.master_password
}

output "dbname" {
  value = aws_rds_cluster.rds_claster.database_name
}

output "cluster_endpoint" {
  value = aws_rds_cluster.rds_claster.endpoint
}