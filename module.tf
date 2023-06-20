# module "three-tier-app" {
#   source = "./Wordpress/Resources"
# }

module "three-tier-ASG" {
  source = "./Wordpress/Resources/ASG_LB"
}

module "three-tier-RDS" {
  source = "./Wordpress/Resources/RDS"
}

module "three-tier-VPC" {
  source = "./Wordpress/Resources/VPC"
}