variable "aws_regions" {
  description = "AWS region"
  type        = string
  default = "us-east-1"
}

variable "vpc_cidr_blk" {
  description = "cider block for vpc"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnets_cidrs" {
  description = "public subnet cidr ip's"
  type        = list(string)
  default     = [
      "10.0.101.0/24",
      "10.0.102.0/24",
      "10.0.103.0/24",
  ]
}

variable "private_subnets_cidrs" {
  description = "private subnet cidr ip's"
  type        = list(string)
  default     = [
      "10.0.1.0/24",
      "10.0.2.0/24",
      "10.0.3.0/24",
  ]
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