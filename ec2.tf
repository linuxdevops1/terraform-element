resource "aws_instance" "Linux-SAP-web-1" {
  count = 3
  ami           = var.aws_ami_id
  instance_type = var.aws_instance_type
  subnet_id = element(aws_subnet.public-subnets.*.id, count.index)
  vpc_security_group_ids = [aws_security_group.SAP-VPC-SG.id]
  associate_public_ip_address = true
  key_name = aws_key_pair.SAP-VPC-key.id
   tags = {
    #Name = "Linux-SAP-web-1"
    #Name = "Linux-Server-${count.index}"
    Name = "Linux-Server-${count.index+1}"
    Env = "prod"
    Owner = "latheef"
  }

}