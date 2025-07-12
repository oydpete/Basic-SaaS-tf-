resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }
  tags = {
    Name = var.tag
  }


  /* Public subnet need just to just access the,
  Nothing more, Nothing less(hence 0.0.0.0 address)
  */
}

resource "aws_route_table" "private_rt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id  = aws_nat_gateway.main.id
  }

  tags = {
      Name = "${var.project_name}-private-rt"
      Environment = var.environment
  }

}


#associating the subnets created

resource "aws_route_table_association" "public_subnets" {
  count          =  var.az_count
  subnet_id      = aws_subnet.public[count.index].id
  route_table_id = aws_route_table.public_rt.id
}

resource "aws_route_table_association" "private_subnets" {
  count          = var.az_count
  subnet_id      = aws_subnet.private[count.index].id
  route_table_id = aws_route_table.private_rt.id
}