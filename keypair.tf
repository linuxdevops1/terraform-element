resource "aws_key_pair" "SAP-VPC-key" {
  key_name   = "pawan"
  public_key = var.aws_key_pair
}