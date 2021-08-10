resource "aws_internet_gateway" "SAP-VPC-IGW" {
  vpc_id = aws_vpc.SAP-VPC.id

  tags = {
    #Name = "SAP-VPC-GW"
    Name = "${var.igw_name}"
  }
}