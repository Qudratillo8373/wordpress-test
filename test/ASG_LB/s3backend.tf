terraform {
  backend "s3" {
    bucket = "terraform-aleksandr-skachkov-2022"
    key    = "project/asg"
    region = "us-east-1"
  }
}

data "terraform_remote_state" "main" {
  backend = "s3" 
    config = {
      bucket = "terraform-aleksandr-skachkov-2022"
      key    = "project/vpc"
      region = "us-east-1"
  }
}

data "terraform_remote_state" "rds" {
  backend = "s3" 
    config = {
      bucket = "terraform-aleksandr-skachkov-2022"
      key    = "project/rds"
      region = "us-east-1"
  }
}

data "template_file" "user_data" {
  template = file("user_data.tpl")
  vars = {
    db_username      = data.terraform_remote_state.rds.outputs.username
    db_user_password = data.terraform_remote_state.rds.outputs.userpassword
    db_name          = data.terraform_remote_state.rds.outputs.dbname
    db_RDS           = data.terraform_remote_state.rds.outputs.cluster_endpoint
  }
}