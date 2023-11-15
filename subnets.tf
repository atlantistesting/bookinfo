resource "aws_subnet" "private_00" {
  vpc_id     = module.vpc.vpc_id
  cidr_block = module.vpc.private_subnets

  tags = {
    Name = "private_00"
  }
}

resource "aws_subnet" "private_01" {
  vpc_id     = module.vpc.vpc_id
  cidr_block = module.vpc.private_subnets

  tags = {
    Name = "private_01"
  }
}

resource "aws_subnet" "private_02" {
  vpc_id     = module.vpc.vpc_id
  cidr_block = module.vpc.private_subnets

  tags = {
    Name = "private_02"
  }
}

resource "aws_subnet" "public_00" {
  vpc_id     = module.vpc.vpc_id
  cidr_block = module.vpc.private_subnets

  tags = {
    Name = "public_00"
  }
}

resource "aws_subnet" "public_01" {
  vpc_id     = module.vpc.vpc_id
  cidr_block = module.vpc.private_subnets

  tags = {
    Name = "public_01"
  }
}

resource "aws_subnet" "public_02" {
  vpc_id     = module.vpc.vpc_id
  cidr_block = module.vpc.private_subnets

  tags = {
    Name = "public_02"
  }
}
