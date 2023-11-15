resource "aws_subnet" "public_00" {
  vpc_id     = module.vpc.vpc_id
  cidr_block = "172.31.16.0/32"

  tags = {
    Name = "public_00"
  }
}

resource "aws_subnet" "public_01" {
  vpc_id     = module.vpc.vpc_id
  cidr_block = "172.31.32.0/32"

  tags = {
    Name = "public_01"
  }
}

resource "aws_subnet" "public_02" {
  vpc_id     = module.vpc.vpc_id
  cidr_block = "172.31.64.0/32"

  tags = {
    Name = "public_02"
  }
}
