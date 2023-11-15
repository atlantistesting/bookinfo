terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.45"
    }
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "2.18.1"
    }
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = ">= 1.14"
    }
  }
}

provider "aws" {
  alias = "virginia"
  region = "us-east-1" 
}

provider "aws" {
  region = "us-east-1" 
}

