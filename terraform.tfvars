project_name          = "myapp"
environment           = "dev"
portnumber = {
  ssh   = 22
  http  = 80
  https = 443
}
default_route         = "0.0.0.0/0"
cidr_block            = "10.0.0.0/16"
az_count              =  2
ec2_instance_type     = "t3.micro" 
aws_region            = "us-east-1"
enable_dns_hostnames  = "true"
instance_tenancy      = "default"
tag                   = "testing"
cluster_name          = "new_vpc"

