resource "aws_subnet" "sub1" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = "10.0.0.0/24"
  availability_zone       = var.subnet_az
  map_public_ip_on_launch = true # It means use subnet for instance launch
}