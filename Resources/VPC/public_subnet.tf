resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.main.id
  count      = length(var.public_subnets_cidrs)
  cidr_block = element(var.public_subnets_cidrs,   count.index)
  availability_zone = element(var.availability_zones,   count.index)
  tags = {
    Name = "public"
    Env  = "Prod"
    Team = "DevOps"
  }
}
