resource "aws_subnet" "public_00" {
  vpc_id     = module.vpc.vpc_id
  cidr_block = "172.16.1.0/24"

  tags = {
    Name = "public_00"
  }
}

resource "aws_subnet" "public_01" {
  vpc_id     = module.vpc.vpc_id
  cidr_block = "172.16.3.0/24"

  tags = {
    Name = "public_01"
  }
}

resource "aws_subnet" "public_02" {
  vpc_id     = module.vpc.vpc_id
  cidr_block = "172.16.4.0/24"

  tags = {
    Name = "public_02"
  }
}
