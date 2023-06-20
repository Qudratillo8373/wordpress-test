data "aws_ami" "linux" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-2.0.20220316.0-x86_64-gp2"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["137112412989"] # Canonical
}

resource "aws_instance" "vpc-test" {
  ami                         = data.aws_ami.linux.id
  instance_type               = "t2.micro"
  associate_public_ip_address = false
  key_name                    = "laptop"

  
  tags = local.tags
  }