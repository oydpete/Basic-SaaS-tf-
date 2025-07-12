resource "aws_security_group" "basic" {
  name        = "${var.project_name}-${var.environment}-web-sg"
  description = "Allow HTTP, SSH and HTTPS traffic"
  vpc_id      = var.vpc_id

  tags = {
    Name        = "workSG"
    Environment = var.environment
  }
}

resource "aws_vpc_security_group_ingress_rule" "ports" {
  for_each          = var.portnumber
  security_group_id = aws_security_group.basic.id
  cidr_ipv4         = local.my_ip
  from_port         = each.value
  ip_protocol       = "tcp"
  to_port           = each.value
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.basic.id
  cidr_ipv4         = var.default_route
  ip_protocol       = "-1"                  #all ports
}
