terraform {
  backend "s3" {
    endpoint                    = "https://nyc3.digitaloceanspaces.com"
    key                         = "production.tfstate"
    bucket                      = "badams"
    region                      = "us-east-2"
    skip_credentials_validation = true
    skip_metadata_api_check     = true
  }
}
