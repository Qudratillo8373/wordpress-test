variable "aws_regions" {
  description = "AWS region"
  type        = string
  default = "us-east-1"
}

variable "engine_version" {
  description = "rds claster engene version"
  type        = string
  default     = "5.7.mysql_aurora.2.03.2"
}

variable "master_username" {
  description = "rds mastr user name"
  type        = string
  default     = "tanos"
}

variable "availability_zones" {
  description = "availability zones of AZ"
  type        = list(string)
  default     = [
       "us-east-1a",
       "us-east-1b",
       "us-east-1c",
  ]
}

variable "ZONEID" {
  description = "id of your domain host"
  type        = string
  default     = "Z0797111NE21F45UKDAP"
}

variable "DOMAIN" {
  description = "your domain host"
  type        = string
  default     = "fiefdomain.com"
}


