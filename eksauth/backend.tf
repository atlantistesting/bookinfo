terraform {
  backend "s3" {
    bucket = "wayofthesys2"
    key    = "bookinfo-auth.tfstate"
    region = "us-east-2"
  }
}
