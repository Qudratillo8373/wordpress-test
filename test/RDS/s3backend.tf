terraform {
  backend "s3" {
    bucket = "terraform-aleksandr-skachkov-2022"
    key    = "project/rds"
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