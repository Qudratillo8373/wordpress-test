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
  default     = "Z030784925PPA0HENHVH7"
}

variable "DOMAIN" {
  description = "your domain host"
  type        = string
  default     = "atfixed.com"
}