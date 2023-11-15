resource "aws_subnet" "private_00" {
  vpc_id     = vpc-0eb767eb3b5a0342f
  cidr_block = "10.0.0.0/24"

  tags = {
    Name = "private_00"
  }
}

resource "aws_subnet" "private_01" {
  vpc_id     = vpc-0eb767eb3b5a0342f
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "private_01"
  }
}

resource "aws_subnet" "private_02" {
  vpc_id     = vpc-0eb767eb3b5a0342f
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "private_02"
  }
}

resource "aws_subnet" "public_00" {
  vpc_id     = vpc-0eb767eb3b5a0342f
  cidr_block = "10.0.3.0/24"

  tags = {
    Name = "public_00"
  }
}

resource "aws_subnet" "public_01" {
  vpc_id     = vpc-0eb767eb3b5a0342f
  cidr_block = "10.0.4.0/24"

  tags = {
    Name = "public_01"
  }
}

resource "aws_subnet" "public_02" {
  vpc_id     = vpc-0eb767eb3b5a0342f
  cidr_block = "10.0.5.0/24"

  tags = {
    Name = "public_02"
  }
}
