data "aws_vpcs" "foo" {
  tags = {
    service = "bookinfo"
  }
}

