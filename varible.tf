variable "region" {}
variable "vpc_name" {}
variable "igw_name" {}
variable "access_key" {}
variable "secret_key" {}
variable "vpc_cidr" {}
variable "aws_key_pair" {}
variable "aws_ami_id" {}
variable "aws_instance_type" {}
#variable "SAP_pub_route1" {}
#variable "SAP_pvt_route2" {}
#variable "public_subnet1_name" {}
#variable "public_subnet2_name" {}
#variable "public_subnet3_name" {}
#variable "public_subnet1_cidr" {}
#variable "public_subnet2_cidr" {}
#variable "public_subnet3_cidr" {}
######################################################
variable "public_subnets" {
  type = list
  default = ["us-east-1a","us-east-1b","us-east-1c"]
  
}

variable "private_subnets" {
  type = list
  default = ["us-east-1a","us-east-1b","us-east-1c"]
  
}

variable "public_cidrs" {
    type = list
    default = ["50.0.2.0/24","50.0.3.0/24","50.0.4.0/24"]
}

variable "private_cidrs" {
    type = list
    default = ["50.0.5.0/24","50.0.6.0/24","50.0.7.0/24"]
}
