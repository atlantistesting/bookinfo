resource "aws_subnet" "private_01" {
  vpc_id     = "vpc-0205bec3c9307208c"
  cidr_block = "10.0.0.0/24"

  tags = {
    Name = "private_01"
  }
}

