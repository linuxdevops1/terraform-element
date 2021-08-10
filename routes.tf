resource "aws_route_table" "public-routing-table" {
   vpc_id = aws_vpc.SAP-VPC.id

  route  {
     cidr_block = "0.0.0.0/0"
      gateway_id = "${aws_internet_gateway.SAP-VPC-IGW.id}"
  }

  tags = {
    Name = "Public-routing-table"
    #Name = var.SAP_prod_route1
  }
}

resource "aws_route_table" "private-routing-table" {
   vpc_id = "${aws_vpc.SAP-VPC.id}"

  route  {
     cidr_block = "0.0.0.0/0"
      gateway_id = "${aws_internet_gateway.SAP-VPC-IGW.id}"
  }

  tags = {
    Name = "Private-routing-table"
    #Name = var.SAP_prod_route2
  }
}

resource "aws_route_table_association" "terraform-public" {
  count = 3
  subnet_id = element(aws_subnet.public-subnets.*.id, count.index) 
  route_table_id = aws_route_table.public-routing-table.id

}

resource "aws_route_table_association" "terraform-private" {
  count = 3
  subnet_id = element(aws_subnet.private-subnets.*.id, count.index) 
  route_table_id = aws_route_table.private-routing-table.id

}