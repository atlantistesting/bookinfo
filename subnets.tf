resource "aws_subnet" "private_00" {
  vpc_id     = "vpc-0a762c08e9eaf51f7"
  cidr_block = "10.0.0.0/24"

  tags = {
    Name = "private_00"
  }
}

resource "aws_subnet" "private_01" {
  vpc_id     = "vpc-0a762c08e9eaf51f7"
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "private_01"
  }
}

resource "aws_subnet" "private_02" {
  vpc_id     = "vpc-0a762c08e9eaf51f7"
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "private_02"
  }
}

resource "aws_subnet" "public_00" {
  vpc_id     = "vpc-0a762c08e9eaf51f7"
  cidr_block = "10.0.3.0/24"

  tags = {
    Name = "public_01"
  }
}

resource "aws_subnet" "public_01" {
  vpc_id     = "vpc-0a762c08e9eaf51f7"
  cidr_block = "10.0.4.0/24"

  tags = {
    Name = "public_01"
  }
}

resource "aws_subnet" "public_02" {
  vpc_id     = "vpc-0a762c08e9eaf51f7"
  cidr_block = "10.0.4.0/24"

  tags = {
    Name = "public_02"
  }
}
