module "asg" {
  source = "terraform-aws-modules/autoscaling/aws"
  # Autoscaling group
  name                      = "example-asg"
  min_size                  = var.min_size
  max_size                  = var.max_size
  desired_capacity          = var.desire_size
  wait_for_capacity_timeout = 0
  health_check_type         = "EC2"
  # Launch template
  launch_template_name        = "example-asg"
  launch_template_description = "Launch template example"
  update_default_version      = true
  image_id                    = data.aws_ami.ubuntu.id
  instance_type               = "t3.micro"
  ebs_optimized               = true
  enable_monitoring           = true
  availability_zone           = data.aws_availability_zones.all.names
  key_name                    = aws_key_pair.deployer.key_name
  security_groups             = [aws_security_group.defender.id]
  user_data_base64            = file("wordpress.sh")
}