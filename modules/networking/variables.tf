variable "cidr_block"  {
    type = string
    
}

variable "instance_tenancy" {
    type = string
   
}

variable "enable_dns_hostnames"  {
    type = bool
    
}

variable "tag" {
    type = string
    
}

variable "az_count" {
  type    = number
  
}

variable "environment" {
  type        = string
  description = "describes the name of project"
}

variable "cluster_name" {
    type = string
    description = "name of the cluster"  
}

variable "project_name" {
  description = "Name of the project"
  type        = string
}