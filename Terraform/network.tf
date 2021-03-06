
#tenancy is how EC2 instances are distributed across physical hardware
#classiclink necessary to support privates ip inside the VPC

resource "aws_vpc" "vpc_adidas" {
  cidr_block = var.cidr
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.vpc_adidas.id

}

resource "aws_subnet" "public_1" {
  vpc_id     = aws_vpc.vpc_adidas.id
  map_public_ip_on_launch = true
  cidr_block = "10.0.1.0/24"
}



resource "aws_route_table" "route-public" {
  vpc_id = aws_vpc.vpc_adidas.id

  route {
    cidr_block = "10.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

}

resource "aws_route_table_association" "public_1" {
  subnet_id      = aws_subnet.public_1.id
  route_table_id = aws_route_table.route-public.id
}