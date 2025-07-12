output "basic_sg" {
  description = "ID of EC2 security group"
  value       = aws_security_group.basic.id
}
