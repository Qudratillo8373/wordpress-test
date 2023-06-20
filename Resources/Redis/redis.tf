resource "aws_elasticache_cluster" "el-cache" {
  cluster_id           = "elastic-cache"
  engine               = "redis"
  node_type            = "cache.m4.large"
  num_cache_nodes      = 1
  parameter_group_name = "default.redis3.2"
  engine_version       = "3.2.10"
  port                 = 6379
}

# resource "aws_redshift_subnet_group" "foo" {
#   name       = "private"
#   subnet_ids = [aws_subnet.foo.id, aws_subnet.bar.id]
# }