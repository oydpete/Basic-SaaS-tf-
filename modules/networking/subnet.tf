resource "aws_subnet" "public" {
    count      = var.az_count  
    vpc_id     = aws_vpc.main.id
    cidr_block = cidrsubnet(var.cidr_block, 8, 2 + count.index * 2)
    availability_zone = data.aws_availability_zones.available.names[count.index]
  tags = {
    Name = "${var.tag}-public-${count.index + 1}"
  }
}



resource "aws_subnet" "private" {
  count             = var.az_count
  vpc_id            = aws_vpc.main.id
  cidr_block        = cidrsubnet(var.cidr_block, 8, 1 + count.index * 2)
  availability_zone = data.aws_availability_zones.available.names[count.index]
  tags = {
    Name            = "${var.tag}-private-${count.index + 1}"
  }
}

