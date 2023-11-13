terraform {
  backend "s3" {
    bucket = "wayofthesys2"
    key    = "bookinfo.tfstate"
    region = "us-east-2"
  }
}
