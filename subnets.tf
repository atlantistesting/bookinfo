resource "aws_subnet" "private_01" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.101.0/24"

  tags = {
    Name = "private_01"
  }
}

resource "aws_subnet" "private_02" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.102.0/24"

  tags = {
    Name = "private_02"
  }
}

resource "aws_subnet" "private_03" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.103.0/24"

  tags = {
    Name = "private_03"
  }
}

resource "aws_subnet" "public_01" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "public_01"
  }
}

resource "aws_subnet" "public_02" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "public_02"
  }
}

resource "aws_subnet" "public_03" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.3.0/24"

  tags = {
    Name = "public_03"
  }
}
