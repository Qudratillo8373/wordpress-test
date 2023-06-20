terraform {
  backend "s3" {
    bucket = "terraform-aleksandr-skachkov-2022"
    key    = "project/vpc"
    region = "us-east-1"
  }
}