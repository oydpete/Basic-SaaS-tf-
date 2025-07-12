
output "vpc_id" {
    value = aws_vpc.main.id
    description = "returns the vpc unique id"
}

output "vpc_arn" {
    value = aws_vpc.main.arn
    description = "returns the aws resource name of the vpc"
}

output "public_subnet_ids" {
    value = aws_subnet.public[*].id
    description = "subnet id of public subnets"
}

output "private_subnet_ids" {
    value = aws_subnet.private[*].id
    description = "subnet id of private subnets"

}

output "nat_gateway_id" {
  description = "IDs of NAT Gateways"
  value       = aws_nat_gateway.main.id
}

output "eip" {
  description = "Elastic IP for Nat Gateway"
  value       = aws_eip.nat.id
}

