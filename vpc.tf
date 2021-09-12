resource "aws_vpc" "ddbtable" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "ddbtable"
  }
}