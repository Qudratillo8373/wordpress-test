variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "min_size" {
  description = "The minimum number of EC2 Instances in the ASG"
  type        = number
  default     = 1
}

variable "desire_size" {
  description = "The maximum number of EC2 Instances in the ASG"
  type        = number
  default     = 4
}

variable "max_size" {
  description = "The maximum number of EC2 Instances in the ASG"
  type        = number
  default     = 99
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

variable "availability_zones" {
  description = "availability zones of AZ"
  type        = list(string)
  default     = [
       "us-east-1a",
       "us-east-1b",
       "us-east-1c",
  ]
}