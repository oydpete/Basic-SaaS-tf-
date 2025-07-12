resource "aws_nat_gateway" "main" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.public[0].id
  tags = {
    Name = var.tag
  }
}

#single elastic Ip for cost effectivensss

resource "aws_eip" "nat" {
  domain   = "vpc"
  depends_on = [aws_internet_gateway.gw]
}

