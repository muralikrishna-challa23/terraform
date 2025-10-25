terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.17.0"
    }
  }

    backend "s3" {
    bucket = "devops-practice-mkreddy"
    key    = "local-remote-state-demo"
    region = "us-east-1"
    user_lockfile = true
    encript = true
  }

}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}