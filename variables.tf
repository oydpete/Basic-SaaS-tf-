variable "project_name" {
  type        = string
  description = "describes the name of project"
}

variable "aws_region" {
  description = "REGION"
  type        = string
}

variable "ec2_instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "cidr_block" {
  type        = string
  description = "CIDR block for the VPC" 
}

variable "instance_tenancy" {
    type = string 
}

variable "az_count" {
  type        = number
  description = "Number of subnets to create"
}

variable "tag" {
  type        = string
  description = "Tag name to assign to resources"
}

variable "cluster_name" {
  type        = string
  description = "The name of the vpc names" 
}



variable "portnumber" {
  description = "Security Group Port Number"
  type        = map(number)
  
}



variable "default_route" {
  type        = string
  description = "CIDR block for the VPC" 
}

variable "enable_dns_hostnames" {
  type = bool  
}
  

variable "environment" {
  type        = string
  description = "describes the name of project"
}
