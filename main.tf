

module "ec2" {
  source              = "./modules/ec2"
  aws_region          = var.aws_region
  project_name        = var.project_name
  keyname             = module.keypair.keypair
  environment         = var.environment
  subnet_id           = module.networking.public_subnet_ids[0]
  security_group_ids  = [module.security_group.basic_sg]
  ec2_instance_type   = var.ec2_instance_type
}


# Security Groups Module
module "security_group" {

  source        = "./modules/security_group"
  vpc_id        = module.networking.vpc_id
  default_route = var.default_route
  project_name  = var.project_name
  environment   = var.environment
  portnumber    = var.portnumber
}

module "networking" {

  source               = "./modules/networking"
  project_name         = var.project_name
  cidr_block           = var.cidr_block
  az_count             = var.az_count
  tag                  = var.tag
  cluster_name         = var.cluster_name
  instance_tenancy     = var.instance_tenancy
  enable_dns_hostnames = var.enable_dns_hostnames
  environment   = var.environment
}




module "keypair" {
  source = "./modules/keypair"
}
