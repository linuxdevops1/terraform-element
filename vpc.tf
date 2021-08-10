resource "aws_vpc" "SAP-VPC" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"

  tags = {
    #Name = "SAP-VPC-INDIA"
    Name = "${var.vpc_name}"
    Owner = "Latheef"
  }
}