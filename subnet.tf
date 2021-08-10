resource "aws_subnet" "public-subnets" {
  count = 3
  vpc_id     = aws_vpc.SAP-VPC.id
  #cidr_block = var.subnet1_cidr
  availability_zone = element(var.public_subnets, count.index)
  cidr_block =  element(var.public_cidrs, count.index)
  
  tags = {
    Name = "public-subnet-${count.index+1}"
    Owner = "latheef"
  }

  }
resource "aws_subnet" "private-subnets" {
  count = 3
  vpc_id = aws_vpc.SAP-VPC.id
   availability_zone = element(var.private_subnets, count.index)
  cidr_block =  element(var.private_cidrs, count.index)

tags = {
    Name = "private-subnet-${count.index+1}"
    Owner = "latheef"
}
}
 # vpc_id     = aws_vpc.SAP-VPC.id
  #cidr_block = var.subnet2_cidr

  