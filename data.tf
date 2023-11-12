data "aws_vpcs" "main" {
  tags = {
    service = "bookinfo"
  }
}
