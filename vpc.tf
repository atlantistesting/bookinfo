module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "bookinfo"
  cidr = "172.16.1.0/24"

  azs             = ["us-east-1a", "us-east-1b", "us-east-1c"]
  private_subnets      = ["172.16.1.0/24", "172.16.2.0/24", "172.16.3.0/24"]
  public_subnets       = ["172.16.4.0/24", "172.16.5.0/24", "172.16.6.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}
