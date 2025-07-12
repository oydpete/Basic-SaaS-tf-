variable "project_name" {
  description = "Name of the project"
  type        = string
}

variable "environment" {
  description = "environment name"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "default_route" {
  
  description = "default"
  type        = string
}

variable "portnumber" {
  description = "Security Group Port Number"
  type        = map(number)
}
