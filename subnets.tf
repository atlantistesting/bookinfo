resource "aws_subnet" "private_01" {
  vpc_id     = "vpc-0a762c08e9eaf51f7"
  cidr_block = "10.0.0.0/24"

  tags = {
    Name = "private_01"
  }
}

