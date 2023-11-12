data "aws_vpcs" "main" {
  tags = {
    Name = "bookinfo"
  }
}
