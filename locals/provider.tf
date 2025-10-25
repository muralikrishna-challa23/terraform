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
    use_lockfile = true
    encrypt = true
  }

}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}