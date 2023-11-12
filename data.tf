variable "vpc_id" {}

data "aws_vpcs" "main" {
  tags = {
    service = "bookinfo"
  }
}
