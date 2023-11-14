data "aws_vpcs" "main" {
  tags = {
    Name = "bookinfo"
  }
}

data "aws_caller_identity" "current" {}
