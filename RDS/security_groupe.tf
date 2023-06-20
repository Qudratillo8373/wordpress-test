resource "aws_security_group" "db_security" {
  name = "db-secgroup"
#   vpc_id = aws_vpc.main.id

ingress {
    description = "MySQL"
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    # cidr_blocks = [
    #   var.public_subnets_cidrs     # puplic  subnets
    #  ]
  }

  ingress {
    description      = "TLS from VPC"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  # Egress to everyone
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
