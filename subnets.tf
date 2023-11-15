resource "aws_subnet" "private_00" {
  vpc_id     = "vpc-0eb767eb3b5a0342f"
  cidr_block = "172.31.0.0/20"

  tags = {
    Name = "private_00"
  }
}

resource "aws_subnet" "private_01" {
  vpc_id     = "vpc-0eb767eb3b5a0342f"
  cidr_block = "172.31.16.0/20"

  tags = {
    Name = "private_01"
  }
}

resource "aws_subnet" "private_02" {
  vpc_id     = "vpc-0eb767eb3b5a0342f"
  cidr_block = "172.31.16.0/20"

  tags = {
    Name = "private_02"
  }
}

resource "aws_subnet" "public_00" {
  vpc_id     = "vpc-0eb767eb3b5a0342f"
  cidr_block = "172.31.32.0/20"

  tags = {
    Name = "public_00"
  }
}

resource "aws_subnet" "public_01" {
  vpc_id     = "vpc-0eb767eb3b5a0342f"
  cidr_block = "172.31.64.0/20"

  tags = {
    Name = "public_01"
  }
}

resource "aws_subnet" "public_02" {
  vpc_id     = "vpc-0eb767eb3b5a0342f"
  cidr_block = "172.31.128.0/20"

  tags = {
    Name = "public_02"
  }
}
